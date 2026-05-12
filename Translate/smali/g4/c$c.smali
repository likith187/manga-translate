.class Lg4/c$c;
.super Lg4/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lg4/c$b;-><init>(Lg4/c$a;)V

    return-void
.end method

.method synthetic constructor <init>(Lg4/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg4/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method c(Lg4/b;)Landroid/window/OnBackInvokedCallback;
    .locals 1

    new-instance v0, Lg4/c$c$a;

    invoke-direct {v0, p0, p1}, Lg4/c$c$a;-><init>(Lg4/c$c;Lg4/b;)V

    return-object v0
.end method
