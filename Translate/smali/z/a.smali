.class final Lz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lz/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lz/a;

    invoke-direct {v0}, Lz/a;-><init>()V

    sput-object v0, Lz/a;->INSTANCE:Lz/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/Size;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSize(Ljava/lang/String;Landroid/util/Size;)V

    return-void
.end method

.method public static final b(Landroid/os/Bundle;Ljava/lang/String;Landroid/util/SizeF;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSizeF(Ljava/lang/String;Landroid/util/SizeF;)V

    return-void
.end method
