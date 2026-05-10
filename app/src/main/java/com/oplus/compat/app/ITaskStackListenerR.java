package com.oplus.compat.app;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes2.dex */
public interface ITaskStackListenerR extends IInterface {
    public static final int FORCED_RESIZEABLE_REASON_SECONDARY_DISPLAY = 2;
    public static final int FORCED_RESIZEABLE_REASON_SPLIT_SCREEN = 1;

    public static abstract class Stub extends Binder implements ITaskStackListenerR {
        private static final String DESCRIPTOR = "android.app.ITaskStackListener";
        static final int TRANSACTION_onActivityDismissingDockedStack = 6;
        static final int TRANSACTION_onActivityForcedResizable = 5;
        static final int TRANSACTION_onActivityLaunchOnSecondaryDisplayFailed = 7;
        static final int TRANSACTION_onActivityLaunchOnSecondaryDisplayRerouted = 8;
        static final int TRANSACTION_onActivityPinned = 2;
        static final int TRANSACTION_onActivityRequestedOrientationChanged = 13;
        static final int TRANSACTION_onActivityRestartAttempt = 4;
        static final int TRANSACTION_onActivityRotation = 26;
        static final int TRANSACTION_onActivityUnpinned = 3;
        static final int TRANSACTION_onBackPressedOnTaskRoot = 18;
        static final int TRANSACTION_onRecentTaskListFrozenChanged = 23;
        static final int TRANSACTION_onRecentTaskListUpdated = 22;
        static final int TRANSACTION_onSingleTaskDisplayDrawn = 19;
        static final int TRANSACTION_onSingleTaskDisplayEmpty = 20;
        static final int TRANSACTION_onSizeCompatModeActivityChanged = 17;
        static final int TRANSACTION_onTaskCreated = 9;
        static final int TRANSACTION_onTaskDescriptionChanged = 12;
        static final int TRANSACTION_onTaskDisplayChanged = 21;
        static final int TRANSACTION_onTaskFocusChanged = 24;
        static final int TRANSACTION_onTaskMovedToFront = 11;
        static final int TRANSACTION_onTaskProfileLocked = 15;
        static final int TRANSACTION_onTaskRemovalStarted = 14;
        static final int TRANSACTION_onTaskRemoved = 10;
        static final int TRANSACTION_onTaskRequestedOrientationChanged = 25;
        static final int TRANSACTION_onTaskSnapshotChanged = 16;
        static final int TRANSACTION_onTaskStackChanged = 1;

        private static class a implements ITaskStackListenerR {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static ITaskStackListenerR f11151b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final IBinder f11152a;

            a(IBinder iBinder) {
                this.f11152a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f11152a;
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityDismissingDockedStack() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.f11152a.transact(6, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityDismissingDockedStack();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityForcedResizable(String str, int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f11152a.transact(5, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityForcedResizable(str, i10, i11);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(7, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onActivityLaunchOnSecondaryDisplayFailed(runningTaskInfo, i10);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(8, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onActivityLaunchOnSecondaryDisplayRerouted(runningTaskInfo, i10);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityPinned(String str, int i10, int i11, int i12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeInt(i12);
                    if (this.f11152a.transact(2, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityPinned(str, i10, i11, i12);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRequestedOrientationChanged(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f11152a.transact(13, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityRequestedOrientationChanged(i10, i11);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z10, boolean z11, boolean z12) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    parcelObtain.writeInt(z11 ? 1 : 0);
                    parcelObtain.writeInt(z12 ? 1 : 0);
                    if (this.f11152a.transact(4, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onActivityRestartAttempt(runningTaskInfo, z10, z11, z12);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityRotation(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(Stub.TRANSACTION_onActivityRotation, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityRotation(i10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onActivityUnpinned() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.f11152a.transact(3, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onActivityUnpinned();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(18, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onBackPressedOnTaskRoot(runningTaskInfo);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onRecentTaskListFrozenChanged(boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f11152a.transact(Stub.TRANSACTION_onRecentTaskListFrozenChanged, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onRecentTaskListFrozenChanged(z10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onRecentTaskListUpdated() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.f11152a.transact(Stub.TRANSACTION_onRecentTaskListUpdated, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onRecentTaskListUpdated();
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSingleTaskDisplayDrawn(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(19, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSingleTaskDisplayDrawn(i10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSingleTaskDisplayEmpty(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(20, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSingleTaskDisplayEmpty(i10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onSizeCompatModeActivityChanged(int i10, IBinder iBinder) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStrongBinder(iBinder);
                    if (this.f11152a.transact(17, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onSizeCompatModeActivityChanged(i10, iBinder);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskCreated(int i10, ComponentName componentName) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (componentName != null) {
                        parcelObtain.writeInt(1);
                        componentName.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(9, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onTaskCreated(i10, componentName);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(12, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onTaskDescriptionChanged(runningTaskInfo);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskDisplayChanged(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f11152a.transact(21, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskDisplayChanged(i10, i11);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskFocusChanged(int i10, boolean z10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(z10 ? 1 : 0);
                    if (this.f11152a.transact(24, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskFocusChanged(i10, z10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(11, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onTaskMovedToFront(runningTaskInfo);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskProfileLocked(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f11152a.transact(15, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskProfileLocked(i10, i11);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (runningTaskInfo != null) {
                        parcelObtain.writeInt(1);
                        runningTaskInfo.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(14, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onTaskRemovalStarted(runningTaskInfo);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRemoved(int i10) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (this.f11152a.transact(10, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskRemoved(i10);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskRequestedOrientationChanged(int i10, int i11) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeInt(i11);
                    if (this.f11152a.transact(25, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskRequestedOrientationChanged(i10, i11);
                } finally {
                    parcelObtain.recycle();
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskSnapshotChanged(int i10, TaskSnapshotNative taskSnapshotNative) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeInt(i10);
                    if (taskSnapshotNative != null) {
                        parcelObtain.writeInt(1);
                        taskSnapshotNative.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f11152a.transact(16, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().onTaskSnapshotChanged(i10, taskSnapshotNative);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.compat.app.ITaskStackListenerR
            public void onTaskStackChanged() {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (this.f11152a.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        return;
                    }
                    Stub.getDefaultImpl().onTaskStackChanged();
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITaskStackListenerR asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITaskStackListenerR)) ? new a(iBinder) : (ITaskStackListenerR) iInterfaceQueryLocalInterface;
        }

        public static ITaskStackListenerR getDefaultImpl() {
            return a.f11151b;
        }

        public static String getDefaultTransactionName(int i10) {
            switch (i10) {
                case 1:
                    return "onTaskStackChanged";
                case 2:
                    return "onActivityPinned";
                case 3:
                    return "onActivityUnpinned";
                case 4:
                    return "onActivityRestartAttempt";
                case 5:
                    return "onActivityForcedResizable";
                case 6:
                    return "onActivityDismissingDockedStack";
                case 7:
                    return "onActivityLaunchOnSecondaryDisplayFailed";
                case 8:
                    return "onActivityLaunchOnSecondaryDisplayRerouted";
                case 9:
                    return "onTaskCreated";
                case 10:
                    return "onTaskRemoved";
                case 11:
                    return "onTaskMovedToFront";
                case 12:
                    return "onTaskDescriptionChanged";
                case 13:
                    return "onActivityRequestedOrientationChanged";
                case 14:
                    return "onTaskRemovalStarted";
                case 15:
                    return "onTaskProfileLocked";
                case 16:
                    return "onTaskSnapshotChanged";
                case 17:
                    return "onSizeCompatModeActivityChanged";
                case 18:
                    return "onBackPressedOnTaskRoot";
                case 19:
                    return "onSingleTaskDisplayDrawn";
                case 20:
                    return "onSingleTaskDisplayEmpty";
                case 21:
                    return "onTaskDisplayChanged";
                case TRANSACTION_onRecentTaskListUpdated /* 22 */:
                    return "onRecentTaskListUpdated";
                case TRANSACTION_onRecentTaskListFrozenChanged /* 23 */:
                    return "onRecentTaskListFrozenChanged";
                case 24:
                    return "onTaskFocusChanged";
                case 25:
                    return "onTaskRequestedOrientationChanged";
                case TRANSACTION_onActivityRotation /* 26 */:
                    return "onActivityRotation";
                default:
                    return null;
            }
        }

        public static boolean setDefaultImpl(ITaskStackListenerR iTaskStackListenerR) {
            if (a.f11151b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTaskStackListenerR == null) {
                return false;
            }
            a.f11151b = iTaskStackListenerR;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        public String getTransactionName(int i10) {
            return getDefaultTransactionName(i10);
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            switch (i10) {
                case 1:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskStackChanged();
                    return true;
                case 2:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityPinned(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt());
                    return true;
                case 3:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityUnpinned();
                    return true;
                case 4:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRestartAttempt(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0, parcel.readInt() != 0, parcel.readInt() != 0);
                    return true;
                case 5:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityForcedResizable(parcel.readString(), parcel.readInt(), parcel.readInt());
                    return true;
                case 6:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityDismissingDockedStack();
                    return true;
                case 7:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityLaunchOnSecondaryDisplayFailed(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 8:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityLaunchOnSecondaryDisplayRerouted(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null, parcel.readInt());
                    return true;
                case 9:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskCreated(parcel.readInt(), parcel.readInt() != 0 ? (ComponentName) ComponentName.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 10:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRemoved(parcel.readInt());
                    return true;
                case 11:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskMovedToFront(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 12:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskDescriptionChanged(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 13:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRequestedOrientationChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case 14:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRemovalStarted(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 15:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskProfileLocked(parcel.readInt(), parcel.readInt());
                    return true;
                case 16:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskSnapshotChanged(parcel.readInt(), parcel.readInt() != 0 ? TaskSnapshotNative.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 17:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSizeCompatModeActivityChanged(parcel.readInt(), parcel.readStrongBinder());
                    return true;
                case 18:
                    parcel.enforceInterface(DESCRIPTOR);
                    onBackPressedOnTaskRoot(parcel.readInt() != 0 ? (ActivityManager.RunningTaskInfo) ActivityManager.RunningTaskInfo.CREATOR.createFromParcel(parcel) : null);
                    return true;
                case 19:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSingleTaskDisplayDrawn(parcel.readInt());
                    return true;
                case 20:
                    parcel.enforceInterface(DESCRIPTOR);
                    onSingleTaskDisplayEmpty(parcel.readInt());
                    return true;
                case 21:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskDisplayChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case TRANSACTION_onRecentTaskListUpdated /* 22 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRecentTaskListUpdated();
                    return true;
                case TRANSACTION_onRecentTaskListFrozenChanged /* 23 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    onRecentTaskListFrozenChanged(parcel.readInt() != 0);
                    return true;
                case 24:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskFocusChanged(parcel.readInt(), parcel.readInt() != 0);
                    return true;
                case 25:
                    parcel.enforceInterface(DESCRIPTOR);
                    onTaskRequestedOrientationChanged(parcel.readInt(), parcel.readInt());
                    return true;
                case TRANSACTION_onActivityRotation /* 26 */:
                    parcel.enforceInterface(DESCRIPTOR);
                    onActivityRotation(parcel.readInt());
                    return true;
                default:
                    return super.onTransact(i10, parcel, parcel2, i11);
            }
        }
    }

    void onActivityDismissingDockedStack() throws RemoteException;

    void onActivityForcedResizable(String str, int i10, int i11) throws RemoteException;

    void onActivityLaunchOnSecondaryDisplayFailed(ActivityManager.RunningTaskInfo runningTaskInfo, int i10) throws RemoteException;

    void onActivityLaunchOnSecondaryDisplayRerouted(ActivityManager.RunningTaskInfo runningTaskInfo, int i10) throws RemoteException;

    void onActivityPinned(String str, int i10, int i11, int i12) throws RemoteException;

    void onActivityRequestedOrientationChanged(int i10, int i11) throws RemoteException;

    void onActivityRestartAttempt(ActivityManager.RunningTaskInfo runningTaskInfo, boolean z10, boolean z11, boolean z12) throws RemoteException;

    void onActivityRotation(int i10) throws RemoteException;

    void onActivityUnpinned() throws RemoteException;

    void onBackPressedOnTaskRoot(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onRecentTaskListFrozenChanged(boolean z10) throws RemoteException;

    void onRecentTaskListUpdated() throws RemoteException;

    void onSingleTaskDisplayDrawn(int i10) throws RemoteException;

    void onSingleTaskDisplayEmpty(int i10) throws RemoteException;

    void onSizeCompatModeActivityChanged(int i10, IBinder iBinder) throws RemoteException;

    void onTaskCreated(int i10, ComponentName componentName) throws RemoteException;

    void onTaskDescriptionChanged(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskDisplayChanged(int i10, int i11) throws RemoteException;

    void onTaskFocusChanged(int i10, boolean z10) throws RemoteException;

    void onTaskMovedToFront(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskProfileLocked(int i10, int i11) throws RemoteException;

    void onTaskRemovalStarted(ActivityManager.RunningTaskInfo runningTaskInfo) throws RemoteException;

    void onTaskRemoved(int i10) throws RemoteException;

    void onTaskRequestedOrientationChanged(int i10, int i11) throws RemoteException;

    void onTaskSnapshotChanged(int i10, TaskSnapshotNative taskSnapshotNative) throws RemoteException;

    void onTaskStackChanged() throws RemoteException;
}
