.class public final synthetic Lcom/oplus/aiunit/translation/fuction/translate/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->a:Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->c:Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->a:Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->b:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/a;->c:Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->d(Lcom/oplus/aiunit/translation/request/PhotoTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/PhotoTranslateCallback;)V

    return-void
.end method
