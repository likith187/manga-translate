.class public final Lcom/coloros/translate/EarPhoneTranslateService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/EarPhoneTranslateService$a;
    }
.end annotation


# static fields
.field public static final h:Lcom/coloros/translate/EarPhoneTranslateService$a;


# instance fields
.field private a:I

.field private b:I

.field private final c:Lcom/coloros/translate/EarPhoneTranslateService$c;

.field private final f:Lcom/coloros/translate/EarPhoneTranslateService$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/EarPhoneTranslateService$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/EarPhoneTranslateService$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/EarPhoneTranslateService;->h:Lcom/coloros/translate/EarPhoneTranslateService$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->a:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->b:I

    new-instance v0, Lcom/coloros/translate/EarPhoneTranslateService$c;

    invoke-direct {v0, p0}, Lcom/coloros/translate/EarPhoneTranslateService$c;-><init>(Lcom/coloros/translate/EarPhoneTranslateService;)V

    iput-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->c:Lcom/coloros/translate/EarPhoneTranslateService$c;

    new-instance v0, Lcom/coloros/translate/EarPhoneTranslateService$b;

    invoke-direct {v0, p0}, Lcom/coloros/translate/EarPhoneTranslateService$b;-><init>(Lcom/coloros/translate/EarPhoneTranslateService;)V

    iput-object v0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->f:Lcom/coloros/translate/EarPhoneTranslateService$b;

    return-void
.end method

.method public static final synthetic a(Lcom/coloros/translate/EarPhoneTranslateService;)Lcom/coloros/translate/EarPhoneTranslateService$c;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->c:Lcom/coloros/translate/EarPhoneTranslateService$c;

    return-object p0
.end method

.method public static final synthetic b(Lcom/coloros/translate/EarPhoneTranslateService;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->a:I

    return p0
.end method

.method public static final synthetic c(Lcom/coloros/translate/EarPhoneTranslateService;)I
    .locals 0

    iget p0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->b:I

    return p0
.end method

.method public static final synthetic d(Lcom/coloros/translate/EarPhoneTranslateService;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/EarPhoneTranslateService;->a:I

    return-void
.end method

.method public static final synthetic e(Lcom/coloros/translate/EarPhoneTranslateService;I)V
    .locals 0

    iput p1, p0, Lcom/coloros/translate/EarPhoneTranslateService;->b:I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/coloros/translate/EarPhoneTranslateService;->f:Lcom/coloros/translate/EarPhoneTranslateService$b;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object p0, Lcom/coloros/translate/utils/c0;->a:Lcom/coloros/translate/utils/c0$a;

    const-string v0, "EarPhoneTranslateService"

    const-string v1, "onCreate"

    invoke-virtual {p0, v0, v1}, Lcom/coloros/translate/utils/c0$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
