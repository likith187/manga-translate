.class public interface abstract Lo9/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo9/l$a;
    }
.end annotation


# static fields
.field public static final a:Lo9/l$a;

.field public static final b:Lo9/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo9/l$a;->a:Lo9/l$a;

    sput-object v0, Lo9/l;->a:Lo9/l$a;

    new-instance v0, Lo9/l$a$a;

    invoke-direct {v0}, Lo9/l$a$a;-><init>()V

    sput-object v0, Lo9/l;->b:Lo9/l;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
.end method

.method public abstract b(ILjava/util/List;Z)Z
.end method

.method public abstract c(ILo9/b;)V
.end method

.method public abstract d(ILt9/f;IZ)Z
.end method
