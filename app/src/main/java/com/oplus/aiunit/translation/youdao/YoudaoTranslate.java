package com.oplus.aiunit.translation.youdao;

import android.util.Log;
import com.coui.appcompat.vibrateutil.VibrateUtils;
import com.google.gson.f;
import com.google.gson.l;
import com.google.gson.n;
import com.oplus.aiunit.core.utils.AuthUtil;
import com.oplus.aiunit.translation.callback.ImageTranslateCallback;
import com.oplus.aiunit.translation.callback.PhotoTranslateCallback;
import com.oplus.aiunit.translation.constant.ErrorCodeConstant;
import com.oplus.aiunit.translation.dcsTrackingPoint.DcsTrackingPoint;
import com.oplus.aiunit.translation.model.ImageTranslateItem;
import com.oplus.aiunit.translation.model.ImageTranslateResult;
import com.oplus.aiunit.translation.model.PhotoTranslateItem;
import com.oplus.aiunit.translation.model.PhotoTranslateResult;
import com.oplus.aiunit.translation.model.YoudaoInfo;
import com.oplus.aiunit.translation.utils.DecryptUtilKt;
import com.oplus.aiunit.translation.youdao.utils.AuthV3Util;
import com.oplus.aiunit.translation.youdao.utils.HttpUtil;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Map;
import okhttp3.b0;
import okhttp3.c0;

/* JADX INFO: loaded from: classes2.dex */
public class YoudaoTranslate {
    static final String TAG = "YoudaoTranslate";

    private static void printLongLog(String str) {
        Log.i(TAG, "Total length: " + str.length());
        if (str.isEmpty()) {
            return;
        }
        Log.i(TAG, "=== Start of long log ===");
        int i10 = 0;
        while (i10 < str.length()) {
            int i11 = i10 + VibrateUtils.STRENGTH_MAX_STEP;
            Log.i(TAG, "start = " + i10 + ", chunk = " + str.substring(i10, Math.min(i11, str.length())));
            i10 = i11;
        }
        Log.i(TAG, "=== End of long log ===");
    }

    private static String printStackTraceToString(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        PrintWriter printWriter = new PrintWriter(stringWriter);
        th.printStackTrace(printWriter);
        printWriter.flush();
        return stringWriter.toString();
    }

    private static void responseError(Object obj, int i10, String str, String str2) {
        if (obj instanceof ImageTranslateCallback) {
            ((ImageTranslateCallback) obj).onError(i10, str);
            DcsTrackingPoint.getInstance().trackEventCommon(DcsTrackingPoint.EventId.TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE, str2, DcsTrackingPoint.Method.generateImageTranslate_sdk, Integer.toString(i10), str);
        } else if (obj instanceof PhotoTranslateCallback) {
            ((PhotoTranslateCallback) obj).onError(i10, str);
            DcsTrackingPoint.getInstance().trackEventCommon(DcsTrackingPoint.EventId.TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE, str2, DcsTrackingPoint.Method.generatePhotoTranslate_sdk, Integer.toString(i10), str);
        }
    }

    public static void translate(int i10, YoudaoInfo youdaoInfo, Map<String, String[]> map, Map<String, String[]> map2, String str, Object obj) {
        try {
            try {
                Log.d(TAG, "addAuthParams");
                String strDecrypt = DecryptUtilKt.decrypt(youdaoInfo.getAppKey(), Base64.getDecoder().decode(youdaoInfo.getPrivate()));
                String strDecrypt2 = DecryptUtilKt.decrypt(youdaoInfo.getAppSecret(), Base64.getDecoder().decode(youdaoInfo.getPrivate()));
                String strDecrypt3 = DecryptUtilKt.decrypt(youdaoInfo.getUrl(), Base64.getDecoder().decode(youdaoInfo.getPrivate()));
                AuthV3Util.addAuthParams(strDecrypt, strDecrypt2, map, str);
                Log.i(TAG, "salt = " + str + ", doPost");
                b0 b0VarDoPost = HttpUtil.doPost(strDecrypt3, map2, map);
                if (b0VarDoPost.x() != 200) {
                    Log.e(TAG, "request failed, salt = " + str + ", http code: " + b0VarDoPost.x());
                    StringBuilder sb = new StringBuilder();
                    sb.append("request failed, http code: ");
                    sb.append(b0VarDoPost.x());
                    responseError(obj, ErrorCodeConstant.INTERNAL_ERROR_CODE_PARAM_PARSE_EXCEPTION, sb.toString(), str);
                    return;
                }
                Log.i(TAG, "salt = " + str + ", finish");
                c0 c0VarC = b0VarDoPost.c();
                if (c0VarC == null) {
                    responseError(obj, ErrorCodeConstant.INTERNAL_ERROR_CODE_PARAM_PARSE_EXCEPTION, "response body is null", str);
                    return;
                }
                Log.d(TAG, "response body is not null");
                l lVarE = n.d(new String(c0VarC.c(), StandardCharsets.UTF_8)).e();
                int iC = lVarE.p("errorCode").c();
                if (iC != 0) {
                    responseError(obj, iC, lVarE.p("msg").h(), str);
                    return;
                }
                double dB = lVarE.p("textAngle") != null ? lVarE.p("textAngle").b() : 0.0d;
                String strH = lVarE.p("render_image") != null ? lVarE.p("render_image").h() : "";
                String strH2 = lVarE.p("lanFrom") != null ? lVarE.p("lanFrom").h() : "";
                String strH3 = lVarE.p("lanTo") != null ? lVarE.p("lanTo").h() : "";
                Log.i(TAG, "render_image = " + strH.length());
                int i11 = 0;
                if (obj instanceof ImageTranslateCallback) {
                    ImageTranslateResult imageTranslateResult = new ImageTranslateResult(dB);
                    imageTranslateResult.setAlgorithmModel(3);
                    imageTranslateResult.setFrom(strH2);
                    imageTranslateResult.setTo(strH3);
                    f fVarQ = lVarE.q("resRegions");
                    ArrayList arrayList = new ArrayList();
                    while (i11 < fVarQ.size()) {
                        l lVarE2 = fVarQ.n(i11).e();
                        ImageTranslateItem imageTranslateItem = new ImageTranslateItem(lVarE2.p("context").h(), lVarE2.p("tranContent").h());
                        i11++;
                        imageTranslateItem.setParagraphNo(i11);
                        arrayList.add(imageTranslateItem);
                    }
                    imageTranslateResult.setTranslate(arrayList);
                    imageTranslateResult.setRenderImage(strH);
                    ((ImageTranslateCallback) obj).onTranslated(imageTranslateResult);
                    DcsTrackingPoint.getInstance().trackEventCommon(DcsTrackingPoint.EventId.TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE, str, DcsTrackingPoint.Method.generateImageTranslate_sdk, AuthUtil.AUTH_STYLE_INNER, "success");
                    return;
                }
                if (obj instanceof PhotoTranslateCallback) {
                    PhotoTranslateResult photoTranslateResult = new PhotoTranslateResult(dB);
                    photoTranslateResult.setAlgorithmModel(3);
                    photoTranslateResult.setRenderImage(strH);
                    photoTranslateResult.setFrom(strH2);
                    photoTranslateResult.setTo(strH3);
                    f fVarQ2 = lVarE.q("resRegions");
                    ArrayList arrayList2 = new ArrayList();
                    while (i11 < fVarQ2.size()) {
                        l lVarE3 = fVarQ2.n(i11).e();
                        PhotoTranslateItem photoTranslateItem = new PhotoTranslateItem(lVarE3.p("context").h(), lVarE3.p("tranContent").h());
                        i11++;
                        photoTranslateItem.setParagraphNo(i11);
                        arrayList2.add(photoTranslateItem);
                    }
                    photoTranslateResult.setTranslate(arrayList2);
                    ((PhotoTranslateCallback) obj).onTranslated(photoTranslateResult);
                    DcsTrackingPoint.getInstance().trackEventCommon(DcsTrackingPoint.EventId.TEXT_TRANSLATION_AND_TO_SPEECH_INTERFACE, str, DcsTrackingPoint.Method.generatePhotoTranslate_sdk, AuthUtil.AUTH_STYLE_INNER, "success");
                }
            } catch (IOException e10) {
                Log.e(TAG, printStackTraceToString(e10));
                responseError(obj, ErrorCodeConstant.INTERNAL_ERROR_CODE_NETWORK_PROBLEM, ErrorCodeConstant.INTERNAL_ERROR_MSG_NETWORK_PROBLEM, str);
            } catch (Exception e11) {
                Log.e(TAG, printStackTraceToString(e11));
                responseError(obj, ErrorCodeConstant.INTERNAL_ERROR_CODE_PARAM_PARSE_EXCEPTION, ErrorCodeConstant.INTERNAL_ERROR_MSG_PARSE_JSON, str);
            }
        } catch (SocketException | SocketTimeoutException | UnknownHostException e12) {
            Log.e(TAG, printStackTraceToString(e12));
            responseError(obj, ErrorCodeConstant.INTERNAL_ERROR_CODE_NETWORK_UNREACHABLE, ErrorCodeConstant.INTERNAL_ERROR_MSG_NETWORK_UNREACHABLE, str);
        }
    }
}
