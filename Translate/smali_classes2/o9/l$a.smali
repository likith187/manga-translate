.class public final Lo9/l$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo9/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/l$a$a;
    }
.end annotation


# static fields
.field static final synthetic a:Lo9/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo9/l$a;

    invoke-direct {v0}, Lo9/l$a;-><init>()V

    sput-object v0, Lo9/l$a;->a:Lo9/l$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
