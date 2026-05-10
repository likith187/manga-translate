package com.oplus.epona;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.oplus.epona.ITransferCallback;

/* JADX INFO: loaded from: classes2.dex */
public interface IRemoteTransfer extends IInterface {
    public static final String DESCRIPTOR = "com.oplus.epona.IRemoteTransfer";

    public static abstract class Stub extends Binder implements IRemoteTransfer {
        static final int TRANSACTION_asyncCall = 2;
        static final int TRANSACTION_call = 1;

        private static class a implements IRemoteTransfer {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public static IRemoteTransfer f11175b;

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private IBinder f11176a;

            a(IBinder iBinder) {
                this.f11176a = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.f11176a;
            }

            @Override // com.oplus.epona.IRemoteTransfer
            public void asyncCall(Request request, ITransferCallback iTransferCallback) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRemoteTransfer.DESCRIPTOR);
                    if (request != null) {
                        parcelObtain.writeInt(1);
                        request.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(iTransferCallback != null ? iTransferCallback.asBinder() : null);
                    if (this.f11176a.transact(2, parcelObtain, parcelObtain2, 0) || Stub.getDefaultImpl() == null) {
                        parcelObtain2.readException();
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    } else {
                        Stub.getDefaultImpl().asyncCall(request, iTransferCallback);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                    }
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }

            @Override // com.oplus.epona.IRemoteTransfer
            public Response call(Request request) {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken(IRemoteTransfer.DESCRIPTOR);
                    if (request != null) {
                        parcelObtain.writeInt(1);
                        request.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f11176a.transact(1, parcelObtain, parcelObtain2, 0) && Stub.getDefaultImpl() != null) {
                        Response responseCall = Stub.getDefaultImpl().call(request);
                        parcelObtain2.recycle();
                        parcelObtain.recycle();
                        return responseCall;
                    }
                    parcelObtain2.readException();
                    Response responseCreateFromParcel = parcelObtain2.readInt() != 0 ? Response.CREATOR.createFromParcel(parcelObtain2) : null;
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    return responseCreateFromParcel;
                } catch (Throwable th) {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                    throw th;
                }
            }
        }

        public Stub() {
            attachInterface(this, IRemoteTransfer.DESCRIPTOR);
        }

        public static IRemoteTransfer asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface(IRemoteTransfer.DESCRIPTOR);
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IRemoteTransfer)) ? new a(iBinder) : (IRemoteTransfer) iInterfaceQueryLocalInterface;
        }

        public static IRemoteTransfer getDefaultImpl() {
            return a.f11175b;
        }

        public static boolean setDefaultImpl(IRemoteTransfer iRemoteTransfer) {
            if (a.f11175b != null) {
                throw new IllegalStateException("setDefaultImpl() called twice");
            }
            if (iRemoteTransfer == null) {
                return false;
            }
            a.f11175b = iRemoteTransfer;
            return true;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1598968902) {
                parcel2.writeString(IRemoteTransfer.DESCRIPTOR);
                return true;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel.enforceInterface(IRemoteTransfer.DESCRIPTOR);
                asyncCall(parcel.readInt() != 0 ? Request.CREATOR.createFromParcel(parcel) : null, ITransferCallback.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface(IRemoteTransfer.DESCRIPTOR);
            Response responseCall = call(parcel.readInt() != 0 ? Request.CREATOR.createFromParcel(parcel) : null);
            parcel2.writeNoException();
            if (responseCall != null) {
                parcel2.writeInt(1);
                responseCall.writeToParcel(parcel2, 1);
            } else {
                parcel2.writeInt(0);
            }
            return true;
        }
    }

    void asyncCall(Request request, ITransferCallback iTransferCallback) throws RemoteException;

    Response call(Request request) throws RemoteException;
}
