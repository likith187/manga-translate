.class public Lorg/greenrobot/eventbus/android/AndroidComponentsImpl;
.super Ly9/a;
.source "SourceFile"


# static fields
.field public static final synthetic d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Ly9/c;

    const-string v1, "EventBus"

    invoke-direct {v0, v1}, Ly9/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Ly9/d;

    invoke-direct {v1}, Ly9/d;-><init>()V

    invoke-direct {p0, v0, v1}, Ly9/a;-><init>(Lx9/g;Lx9/h;)V

    return-void
.end method
