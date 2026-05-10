package com.android.internal.telephony;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.android.internal.telephony.IIntegerConsumer;

/* JADX INFO: loaded from: classes.dex */
public interface ITelephony extends IInterface {

    public static abstract class Stub extends Binder implements ITelephony {
        public static final String DESCRIPTOR = "com.android.internal.telephony.ITelephony";
        static final int TRANSACTION_endCall = 3;
        static final int TRANSACTION_enqueueSmsPickResult = 1;
        static final int TRANSACTION_sendVisualVoicemailSmsForSubscriber = 2;

        private static class a implements ITelephony {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static ITelephony f4712b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f4713a;

            a(IBinder iBinder) {
                this.f4713a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f4713a;
            }

            @Override // com.android.internal.telephony.ITelephony
            public boolean endCall() {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    if (!this.f4713a.transact(3, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        return Stub.getDefaultImpl().endCall();
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void enqueueSmsPickResult(String str, IIntegerConsumer iIntegerConsumer) {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeStrongBinder(iIntegerConsumer != null ? iIntegerConsumer.asBinder() : null);
                    if (this.f4713a.transact(1, parcelObtain, null, 1) || Stub.getDefaultImpl() == null) {
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().enqueueSmsPickResult(str, iIntegerConsumer);
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.android.internal.telephony.ITelephony
            public void sendVisualVoicemailSmsForSubscriber(String str, int i10, String str2, int i11, String str3, PendingIntent pendingIntent) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeInt(i11);
                    parcelObtain.writeString(str3);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (this.f4713a.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().sendVisualVoicemailSmsForSubscriber(str, i10, str2, i11, str3, pendingIntent);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static ITelephony asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof ITelephony)) ? new a(iBinder) : (ITelephony) iInterfaceQueryLocalInterface;
        }

        public static ITelephony getDefaultImpl() {
            return a.f4712b;
        }

        public static boolean setDefaultImpl(ITelephony iTelephony) {
            if (a.f4712b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iTelephony == null) {
                return false;
            }
            a.f4712b = iTelephony;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(DESCRIPTOR);
                return true;
            }
            if (i10 == 1) {
                parcel.enforceInterface(DESCRIPTOR);
                enqueueSmsPickResult(parcel.readString(), IIntegerConsumer.Stub.asInterface(parcel.readStrongBinder()));
                return true;
            }
            if (i10 == 2) {
                parcel.enforceInterface(DESCRIPTOR);
                sendVisualVoicemailSmsForSubscriber(parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                parcel2.writeNoException();
                return true;
            }
            if (i10 != 3) {
                return super.onTransact(i10, parcel, parcel2, i11);
            }
            parcel.enforceInterface(DESCRIPTOR);
            boolean zEndCall = endCall();
            parcel2.writeNoException();
            parcel2.writeInt(zEndCall ? 1 : 0);
            return true;
        }
    }

    boolean endCall() throws RemoteException;

    void enqueueSmsPickResult(String str, IIntegerConsumer iIntegerConsumer) throws RemoteException;

    void sendVisualVoicemailSmsForSubscriber(String str, int i10, String str2, int i11, String str3, PendingIntent pendingIntent) throws RemoteException;
}
