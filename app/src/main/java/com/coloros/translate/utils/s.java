package com.coloros.translate.utils;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioManager;
import com.coloros.translate.utils.c0;
import java.lang.reflect.Method;
import java.util.Set;
import n8.r;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    public static final s INSTANCE = new s();

    private s() {
    }

    public static final boolean a(Context context) {
        Object objM59constructorimpl;
        Set<BluetoothDevice> bondedDevices;
        kotlin.jvm.internal.r.e(context, "context");
        try {
            r.a aVar = n8.r.Companion;
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        if (r.a.a(context, "android.permission.BLUETOOTH_CONNECT") != 0) {
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
            if (n8.r.m62exceptionOrNullimpl(objM59constructorimpl) != null) {
                c0.f7098a.e("EarPhoneDeviceMonitor", "isBluetoothHeadsetConnected error");
            }
            return false;
        }
        BluetoothAdapter defaultAdapter = BluetoothAdapter.getDefaultAdapter();
        int profileConnectionState = defaultAdapter.getProfileConnectionState(2);
        int profileConnectionState2 = defaultAdapter.getProfileConnectionState(1);
        boolean z10 = 2 == profileConnectionState2 || 2 == profileConnectionState;
        c0.f7098a.i("EarPhoneDeviceMonitor", "isBluetoothHeadsetConnected " + profileConnectionState + " " + profileConnectionState2);
        if (z10 && (bondedDevices = defaultAdapter.getBondedDevices()) != null) {
            kotlin.jvm.internal.r.b(bondedDevices);
            int i10 = 0;
            for (Object obj : bondedDevices) {
                int i11 = i10 + 1;
                if (i10 < 0) {
                    kotlin.collections.o.q();
                }
                BluetoothDevice bluetoothDevice = (BluetoothDevice) obj;
                c0.a aVar3 = c0.f7098a;
                aVar3.d("EarPhoneDeviceMonitor", "isBluetoothHeadsetConnected bluetoothDevice:" + bluetoothDevice.getName());
                if (bluetoothDevice.getBluetoothClass().getMajorDeviceClass() == 1024) {
                    kotlin.jvm.internal.r.b(bluetoothDevice);
                    if (b(bluetoothDevice)) {
                        aVar3.i("EarPhoneDeviceMonitor", "isBluetoothHeadsetConnected  exist blue phone");
                        return true;
                    }
                }
                i10 = i11;
            }
        }
        return false;
    }

    private static final boolean b(BluetoothDevice bluetoothDevice) {
        Object objM59constructorimpl;
        boolean zBooleanValue = false;
        try {
            r.a aVar = n8.r.Companion;
            Method method = BluetoothDevice.class.getMethod("isConnected", null);
            method.setAccessible(true);
            Object objInvoke = method.invoke(bluetoothDevice, null);
            kotlin.jvm.internal.r.c(objInvoke, "null cannot be cast to non-null type kotlin.Boolean");
            zBooleanValue = ((Boolean) objInvoke).booleanValue();
            objM59constructorimpl = n8.r.m59constructorimpl(n8.h0.INSTANCE);
        } catch (Throwable th) {
            r.a aVar2 = n8.r.Companion;
            objM59constructorimpl = n8.r.m59constructorimpl(n8.s.a(th));
        }
        Throwable thM62exceptionOrNullimpl = n8.r.m62exceptionOrNullimpl(objM59constructorimpl);
        if (thM62exceptionOrNullimpl != null) {
            c0.f7098a.e("EarPhoneDeviceMonitor", "isConnect error " + thM62exceptionOrNullimpl);
        }
        return zBooleanValue;
    }

    public static final boolean c(Context context) {
        kotlin.jvm.internal.r.e(context, "context");
        c0.f7098a.i("EarPhoneDeviceMonitor", "isHasEarPhone");
        Object systemService = context.getSystemService("audio");
        AudioManager audioManager = systemService instanceof AudioManager ? (AudioManager) systemService : null;
        AudioDeviceInfo[] devices = audioManager != null ? audioManager.getDevices(2) : null;
        if (devices != null) {
            for (AudioDeviceInfo audioDeviceInfo : devices) {
                if (audioDeviceInfo.getType() == 3 || audioDeviceInfo.getType() == 4 || audioDeviceInfo.getType() == 22) {
                    c0.f7098a.i("EarPhoneDeviceMonitor", "exist line earphone");
                    return true;
                }
                if (audioDeviceInfo.getType() == 7 || audioDeviceInfo.getType() == 8) {
                    c0.f7098a.i("EarPhoneDeviceMonitor", "exist blue earphone");
                    return true;
                }
                c0.f7098a.d("EarPhoneDeviceMonitor", "devices:" + audioDeviceInfo.getType());
            }
        }
        return a(context);
    }
}
