.class public abstract Lcom/coloros/translate/utils/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/translate/utils/f1$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/coloros/translate/utils/f1$a;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coloros/translate/utils/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/translate/utils/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coloros/translate/utils/f1;->a:Lcom/coloros/translate/utils/f1$a;

    const-string v0, "UserDataCollectionUtil"

    sput-object v0, Lcom/coloros/translate/utils/f1;->b:Ljava/lang/String;

    return-void
.end method
