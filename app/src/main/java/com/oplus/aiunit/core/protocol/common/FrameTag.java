package com.oplus.aiunit.core.protocol.common;

import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.translation.fuction.translate.TranslationClient;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FrameTag {
    private static final String TAG = "FrameTag";
    public List<FrameFragment> fragments = new ArrayList();
    public Integer packageOrder;
    public Integer slotOrder;
    public String tag;
    public String type;

    public static class FrameFragment {
        public Integer channel;
        public Integer height;
        public Integer imageFormat;
        long start;
        public String tag;
        public Integer width;

        public FrameFragment() {
        }

        public static FrameFragment fromJson(String str) {
            FrameFragment frameFragment = new FrameFragment();
            try {
                JSONObject jSONObject = new JSONObject(str);
                frameFragment.width = Integer.valueOf(jSONObject.getInt("width"));
                frameFragment.height = Integer.valueOf(jSONObject.getInt("height"));
                frameFragment.channel = Integer.valueOf(jSONObject.getInt(TranslationClient.PARAM_KEY_CHANNEL));
                frameFragment.imageFormat = Integer.valueOf(jSONObject.getInt("imageFormat"));
                frameFragment.tag = jSONObject.getString("tag");
                frameFragment.start = jSONObject.getLong("start");
                return frameFragment;
            } catch (Exception unused) {
                return null;
            }
        }

        public Integer getChannel() {
            return this.channel;
        }

        public Integer getHeight() {
            return this.height;
        }

        public Integer getImageFormat() {
            return this.imageFormat;
        }

        public long getStart() {
            return this.start;
        }

        public String getTag() {
            return this.tag;
        }

        public Integer getWidth() {
            return this.width;
        }

        public JSONObject toJson() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("width", this.width);
                jSONObject.put("height", this.height);
                jSONObject.put(TranslationClient.PARAM_KEY_CHANNEL, this.channel);
                jSONObject.put("imageFormat", this.imageFormat);
                jSONObject.put("tag", this.tag);
                jSONObject.put("start", this.start);
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
            return jSONObject;
        }

        public FrameFragment(Integer num, Integer num2, Integer num3, Integer num4, String str, Long l10) {
            this.width = num;
            this.height = num2;
            this.channel = num3;
            this.imageFormat = num4;
            this.tag = str;
            this.start = l10.longValue();
        }
    }

    public FrameTag() {
    }

    public static FrameTag fromJson(String str) {
        FrameTag frameTag = new FrameTag();
        try {
            JSONObject jSONObject = new JSONObject(str);
            frameTag.packageOrder = Integer.valueOf(jSONObject.getInt("packageOrder"));
            frameTag.slotOrder = Integer.valueOf(jSONObject.getInt("slotOrder"));
            frameTag.type = jSONObject.getString("type");
            frameTag.tag = jSONObject.getString("tag");
            if (!jSONObject.has("fragments")) {
                return frameTag;
            }
            JSONArray jSONArray = jSONObject.getJSONArray("fragments");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                frameTag.fragments.add(FrameFragment.fromJson(jSONArray.getString(i10)));
            }
            return frameTag;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static Map<Integer, FrameTag> getInputTags(String str) {
        return getTagsByType(str, "input");
    }

    public static Map<Integer, FrameTag> getOutputTags(String str) {
        return getTagsByType(str, "output");
    }

    public static Map<Integer, FrameTag> getTagsByType(String str, String str2) {
        HashMap map = new HashMap();
        try {
            JSONArray jSONArray = new JSONObject(str).getJSONArray("frameTagList");
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                FrameTag frameTagFromJson = fromJson(jSONArray.getString(i10));
                if (frameTagFromJson != null && str2.equals(frameTagFromJson.getType())) {
                    map.put(frameTagFromJson.getSlotOrder(), frameTagFromJson);
                }
            }
        } catch (Exception unused) {
            AILog.e(TAG, "invalid json is " + str);
            map.clear();
        }
        return map;
    }

    public static JSONObject listToJson(List<FrameTag> list) {
        JSONObject jSONObject = new JSONObject();
        JSONArray jSONArray = new JSONArray();
        Iterator<FrameTag> it = list.iterator();
        while (it.hasNext()) {
            jSONArray.put(it.next().toJson());
        }
        try {
            jSONObject.put("frameTagList", jSONArray);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public void addChildFrameUnit(FrameUnit frameUnit, int i10) {
        if (frameUnit == null) {
            AILog.w(TAG, "child frame unit is null.");
            return;
        }
        FrameFragment frameFragment = new FrameFragment();
        frameFragment.width = Integer.valueOf(frameUnit.getWidth());
        frameFragment.height = Integer.valueOf(frameUnit.getHeight());
        frameFragment.channel = Integer.valueOf(frameUnit.getChannel());
        frameFragment.imageFormat = Integer.valueOf(frameUnit.getImageFormat());
        frameFragment.tag = frameUnit.getTag();
        frameFragment.start = i10;
        this.fragments.add(frameFragment);
    }

    public List<FrameFragment> getFragments() {
        return this.fragments;
    }

    public Integer getPackageOrder() {
        return this.packageOrder;
    }

    public Integer getSlotOrder() {
        return this.slotOrder;
    }

    public String getTag() {
        return this.tag;
    }

    public String getType() {
        return this.type;
    }

    public void setFragments(List<FrameFragment> list) {
        this.fragments = list;
    }

    public void setPackageOrder(Integer num) {
        this.packageOrder = num;
    }

    public void setSlotOrder(Integer num) {
        this.slotOrder = num;
    }

    public void setTag(String str) {
        this.tag = str;
    }

    public void setType(String str) {
        this.type = str;
    }

    public JSONObject toJson() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("packageOrder", this.packageOrder);
            jSONObject.put("slotOrder", this.slotOrder);
            jSONObject.put("type", this.type);
            jSONObject.put("tag", this.tag);
            if (!this.fragments.isEmpty()) {
                JSONArray jSONArray = new JSONArray();
                Iterator<FrameFragment> it = this.fragments.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().toJson());
                }
                jSONObject.put("fragments", jSONArray);
            }
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
        return jSONObject;
    }

    public String toString() {
        try {
            return toJson().toString(0);
        } catch (JSONException e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public FrameTag(Integer num, Integer num2, String str, String str2) {
        this.packageOrder = num;
        this.slotOrder = num2;
        this.type = str;
        this.tag = str2;
    }
}
