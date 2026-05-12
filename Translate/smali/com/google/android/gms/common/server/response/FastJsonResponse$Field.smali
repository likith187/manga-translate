.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/server/response/FastJsonResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/a;


# instance fields
.field private final a:I

.field protected final b:I

.field protected final c:Z

.field protected final f:I

.field protected final h:Z

.field protected final i:Ljava/lang/String;

.field protected final j:I

.field protected final k:Ljava/lang/Class;

.field protected final l:Ljava/lang/String;

.field private m:Lcom/google/android/gms/common/server/response/zan;

.field private final n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/a;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/a;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/a;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/zaa;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:I

    const/4 p1, 0x0

    if-nez p8, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-class p2, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l:Ljava/lang/String;

    :goto_0
    if-nez p9, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-void

    :cond_1
    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/zaa;->E0()Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-void
.end method

.method static bridge synthetic F0(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/FastJsonResponse$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    return-object p0
.end method


# virtual methods
.method public D0()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:I

    return p0
.end method

.method final E0()Lcom/google/android/gms/common/server/converter/zaa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/common/server/converter/zaa;->D0(Lcom/google/android/gms/common/server/response/FastJsonResponse$a;)Lcom/google/android/gms/common/server/converter/zaa;

    move-result-object p0

    return-object p0
.end method

.method public final G0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/server/response/FastJsonResponse$a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method final H0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public final I0()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->m:Lcom/google/android/gms/common/server/response/zan;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->m:Lcom/google/android/gms/common/server/response/zan;

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->l:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/server/response/zan;->E0(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/k;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public final J0(Lcom/google/android/gms/common/server/response/zan;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->m:Lcom/google/android/gms/common/server/response/zan;

    return-void
.end method

.method public final K0()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/j;->c(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeIn"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeInArray"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "typeOut"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "typeOutArray"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    const-string v1, "outputFieldName"

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->j:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "safeParcelFieldId"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    const-string v1, "concreteTypeName"

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->H0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->k:Ljava/lang/Class;

    if-eqz v1, :cond_0

    const-string v2, "concreteType.class"

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->n:Lcom/google/android/gms/common/server/response/FastJsonResponse$a;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "converterName"

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/common/internal/j$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/j$a;

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/j$a;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->a:I

    invoke-static {p1}, Ln3/b;->a(Landroid/os/Parcel;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v0}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x2

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->b:I

    invoke-static {p1, v0, v2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x3

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->c:Z

    invoke-static {p1, v0, v2}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    const/4 v0, 0x4

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->f:I

    invoke-static {p1, v0, v2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/4 v0, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->h:Z

    invoke-static {p1, v0, v2}, Ln3/b;->c(Landroid/os/Parcel;IZ)V

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->i:Ljava/lang/String;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p1, v2, v0, v3}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->D0()I

    move-result v2

    invoke-static {p1, v0, v2}, Ln3/b;->g(Landroid/os/Parcel;II)V

    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->H0()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v2, v3}, Ln3/b;->m(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->E0()Lcom/google/android/gms/common/server/converter/zaa;

    move-result-object p0

    invoke-static {p1, v0, p0, p2, v3}, Ln3/b;->l(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    invoke-static {p1, v1}, Ln3/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
