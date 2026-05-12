.class public Lcom/heytap/epona/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/heytap/epona/Response;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private f:Lcom/heytap/epona/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/heytap/epona/Response$a;

    invoke-direct {v0}, Lcom/heytap/epona/Response$a;-><init>()V

    sput-object v0, Lcom/heytap/epona/Response;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/heytap/epona/Response;->a:I

    .line 4
    iput-object p2, p0, Lcom/heytap/epona/Response;->b:Ljava/lang/String;

    .line 5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/heytap/epona/Response;->c:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/heytap/epona/Response;->a:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/epona/Response;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/heytap/epona/Response;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/heytap/epona/Response$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/heytap/epona/Response;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static b()Lcom/heytap/epona/Response;
    .locals 3

    new-instance v0, Lcom/heytap/epona/Response;

    const/4 v1, -0x1

    const-string v2, "somethings not yet..."

    invoke-direct {v0, v1, v2}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Lcom/heytap/epona/Response;
    .locals 2

    new-instance v0, Lcom/heytap/epona/Response;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0}, Lcom/heytap/epona/Response;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)V
    .locals 2

    iget-object v0, p0, Lcom/heytap/epona/Response;->c:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/heytap/epona/Response;->f:Lcom/heytap/epona/e;

    if-nez v1, :cond_2

    const-string v1, "epona_exception_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/heytap/epona/ExceptionInfo;

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {v0}, Lcom/heytap/epona/e;->create(Lcom/heytap/epona/ExceptionInfo;)Lcom/heytap/epona/e;

    move-result-object v0

    iput-object v0, p0, Lcom/heytap/epona/Response;->f:Lcom/heytap/epona/e;

    :cond_2
    iget-object p0, p0, Lcom/heytap/epona/Response;->f:Lcom/heytap/epona/e;

    invoke-virtual {p0, p1}, Lcom/heytap/epona/e;->maybeRethrow(Ljava/lang/Class;)V

    return-void
.end method

.method public d()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/heytap/epona/Response;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/heytap/epona/Response;->b:Ljava/lang/String;

    return-object p0
.end method

.method public f()Z
    .locals 1

    iget p0, p0, Lcom/heytap/epona/Response;->a:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Successful="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/heytap/epona/Response;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/heytap/epona/Response;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/heytap/epona/Response;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/heytap/epona/Response;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/heytap/epona/Response;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
