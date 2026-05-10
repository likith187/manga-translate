package com.oplus.aiunit.nlp.slot;

import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameOutputSlot;
import com.oplus.aiunit.core.utils.AILog;
import com.oplus.aiunit.nlp.result.NlpEntity;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NlpOutputSlot extends FrameOutputSlot {
    public static final Companion Companion = new Companion(null);
    private static final String TAG = "NlpOutputSlot";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NlpOutputSlot(AIContext aiContext) {
        super(aiContext);
        r.e(aiContext, "aiContext");
    }

    public List<NlpEntity> getResult() {
        ArrayList arrayList;
        Exception e10;
        JSONArray jSONArrayOptJSONArray;
        String jsonResult = getJsonResult();
        if (jsonResult == null || jsonResult.length() == 0) {
            return null;
        }
        try {
            jSONArrayOptJSONArray = new JSONObject(jsonResult).optJSONArray("processedResult");
        } catch (Exception e11) {
            arrayList = null;
            e10 = e11;
        }
        if (jSONArrayOptJSONArray == null) {
            return null;
        }
        arrayList = new ArrayList();
        try {
            int length = jSONArrayOptJSONArray.length();
            for (int i10 = 0; i10 < length; i10++) {
                NlpEntity nlpEntityFromJson = NlpEntity.Companion.fromJson(jSONArrayOptJSONArray.getString(i10));
                if (nlpEntityFromJson != null) {
                    arrayList.add(nlpEntityFromJson);
                }
            }
        } catch (Exception e12) {
            e10 = e12;
            AILog.e(TAG, "getResult failed. " + jsonResult + ". " + e10.getMessage());
        }
        return arrayList;
        AILog.e(TAG, "getResult failed. " + jsonResult + ". " + e10.getMessage());
        return arrayList;
    }
}
