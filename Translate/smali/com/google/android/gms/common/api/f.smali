.class public Lcom/google/android/gms/common/api/f;
.super Lcom/google/android/gms/common/api/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/b;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method public getResolution()Landroid/app/PendingIntent;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/Status;->E0()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public startResolutionForResult(Landroid/app/Activity;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/b;->getStatus()Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/api/Status;->I0(Landroid/app/Activity;I)V

    return-void
.end method
