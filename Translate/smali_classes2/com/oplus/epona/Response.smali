.class public Lcom/oplus/epona/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oplus/epona/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/epona/Response$a;

    invoke-direct {v0}, Lcom/oplus/epona/Response$a;-><init>()V

    sput-object v0, Lcom/oplus/epona/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/oplus/epona/Response;->a:I

    .line 4
    iput-object p2, p0, Lcom/oplus/epona/Response;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/oplus/epona/Response;->c:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/oplus/epona/Response;->a:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/epona/Response;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/epona/Response;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oplus/epona/Response$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/oplus/epona/Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static a()Lcom/oplus/epona/Response;
    .locals 3

    new-instance v0, Lcom/oplus/epona/Response;

    sget-object v1, Lcom/oplus/epona/i;->FAILED:Lcom/oplus/epona/i;

    invoke-virtual {v1}, Lcom/oplus/epona/i;->getCode()I

    move-result v1

    const-string v2, "somethings not yet..."

    invoke-direct {v0, v1, v2}, Lcom/oplus/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static b(Ljava/lang/Exception;)Lcom/oplus/epona/Response;
    .locals 3

    new-instance v0, Lcom/oplus/epona/Response;

    sget-object v1, Lcom/oplus/epona/i;->FAILED:Lcom/oplus/epona/i;

    invoke-virtual {v1}, Lcom/oplus/epona/i;->getCode()I

    move-result v1

    const-string v2, "response has exception"

    invoke-direct {v0, v1, v2}, Lcom/oplus/epona/Response;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/oplus/epona/Response;->d()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/oplus/epona/ExceptionInfo;

    invoke-direct {v2, p0}, Lcom/oplus/epona/ExceptionInfo;-><init>(Ljava/lang/Throwable;)V

    const-string p0, "epona_exception_info"

    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/oplus/epona/Response;
    .locals 2

    new-instance v0, Lcom/oplus/epona/Response;

    sget-object v1, Lcom/oplus/epona/i;->FAILED:Lcom/oplus/epona/i;

    invoke-virtual {v1}, Lcom/oplus/epona/i;->getCode()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/oplus/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static f(Landroid/os/Bundle;)Lcom/oplus/epona/Response;
    .locals 3

    new-instance v0, Lcom/oplus/epona/Response;

    sget-object v1, Lcom/oplus/epona/i;->SUCCESS:Lcom/oplus/epona/i;

    invoke-virtual {v1}, Lcom/oplus/epona/i;->getCode()I

    move-result v1

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/oplus/epona/Response;-><init>(ILjava/lang/String;)V

    invoke-direct {v0, p0}, Lcom/oplus/epona/Response;->g(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/oplus/epona/Response;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public d()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/oplus/epona/Response;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Z
    .locals 1

    iget p0, p0, Lcom/oplus/epona/Response;->a:I

    sget-object v0, Lcom/oplus/epona/i;->SUCCESS:Lcom/oplus/epona/i;

    invoke-virtual {v0}, Lcom/oplus/epona/i;->getCode()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/epona/Response;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/oplus/epona/Response;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/oplus/epona/Response;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/epona/Response;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
