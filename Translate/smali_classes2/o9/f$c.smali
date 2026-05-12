.class public abstract Lo9/f$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/f$c$b;
    }
.end annotation


# static fields
.field public static final a:Lo9/f$c$b;

.field public static final b:Lo9/f$c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo9/f$c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo9/f$c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lo9/f$c;->a:Lo9/f$c$b;

    new-instance v0, Lo9/f$c$a;

    invoke-direct {v0}, Lo9/f$c$a;-><init>()V

    sput-object v0, Lo9/f$c;->b:Lo9/f$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo9/f;Lo9/m;)V
    .locals 0

    const-string p0, "connection"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "settings"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract b(Lo9/i;)V
.end method
