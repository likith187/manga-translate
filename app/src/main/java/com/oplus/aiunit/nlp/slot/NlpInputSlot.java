package com.oplus.aiunit.nlp.slot;

import com.oplus.aiunit.core.FrameUnit;
import com.oplus.aiunit.core.base.AIContext;
import com.oplus.aiunit.core.base.FrameInputSlot;
import com.oplus.aiunit.core.protocol.common.ErrorCode;
import com.oplus.aiunit.core.protocol.common.ImageFormat;
import com.oplus.aiunit.core.utils.AILog;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class NlpInputSlot extends FrameInputSlot {
    public static final Companion Companion = new Companion(null);
    private static final String JSON_KEY = "processedSource";
    private static final String TAG = "BitmapInputSlot";

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NlpInputSlot(AIContext aiContext) {
        super(aiContext);
        r.e(aiContext, "aiContext");
    }

    public final int setJsonValue(String json) {
        r.e(json, "json");
        setJsonSource(json);
        cleanExistFrameUnit();
        FrameUnit frameUnitApplyFrameUnit = getAIContext().applyFrameUnit(0);
        if (frameUnitApplyFrameUnit == null) {
            setError(ErrorCode.kErrorInvalidParam);
            return getErrorCode().value();
        }
        frameUnitApplyFrameUnit.setFlag(1);
        frameUnitApplyFrameUnit.setWidth(1);
        frameUnitApplyFrameUnit.setHeight(1);
        frameUnitApplyFrameUnit.setChannel(1);
        frameUnitApplyFrameUnit.setImageFormatDirectly(ImageFormat.IGNORED);
        addFrameUnit(frameUnitApplyFrameUnit);
        return getErrorCode().value();
    }

    public final int setValue(String text) {
        r.e(text, "text");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(JSON_KEY, text);
            String string = jSONObject.toString();
            r.d(string, "toString(...)");
            return setJsonValue(string);
        } catch (JSONException e10) {
            AILog.e(TAG, "setJsonValue err. " + e10.getMessage());
            setError(ErrorCode.kErrorInvalidParam);
            return getErrorCode().value();
        }
    }
}
