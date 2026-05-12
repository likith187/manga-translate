.class public final synthetic Lcom/oplus/aiunit/translation/fuction/translate/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;

.field public final synthetic b:Ljava/util/HashMap;

.field public final synthetic c:Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->a:Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;

    iput-object p2, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->b:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->c:Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->a:Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;

    iget-object v1, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->b:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/oplus/aiunit/translation/fuction/translate/b;->c:Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;

    invoke-static {v0, v1, p0}, Lcom/oplus/aiunit/translation/fuction/translate/TranslationClient;->e(Lcom/oplus/aiunit/translation/request/ImageTranslateRequest;Ljava/util/HashMap;Lcom/oplus/aiunit/translation/callback/ImageTranslateCallback;)V

    return-void
.end method
