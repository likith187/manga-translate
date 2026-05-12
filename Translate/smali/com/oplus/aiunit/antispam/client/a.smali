.class public final synthetic Lcom/oplus/aiunit/antispam/client/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/aiunit/antispam/client/a;->a:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    iput-object p2, p0, Lcom/oplus/aiunit/antispam/client/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/aiunit/antispam/client/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/aiunit/antispam/client/a;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/oplus/aiunit/antispam/client/a;->e:Z

    iput-object p6, p0, Lcom/oplus/aiunit/antispam/client/a;->f:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/oplus/aiunit/antispam/client/a;->a:Lcom/oplus/aiunit/antispam/client/AntiSpamClient;

    iget-object v1, p0, Lcom/oplus/aiunit/antispam/client/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/aiunit/antispam/client/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/oplus/aiunit/antispam/client/a;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/oplus/aiunit/antispam/client/a;->e:Z

    iget-object v5, p0, Lcom/oplus/aiunit/antispam/client/a;->f:Lcom/oplus/aiunit/antispam/client/AntiSpamCallback;

    invoke-static/range {v0 .. v5}, Lcom/oplus/aiunit/antispam/client/AntiSpamClient;->r(Lcom/oplus/aiunit/antispam/client/AntiSpamClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/oplus/aiunit/antispam/client/AntiSpamCallback;)Ln8/h0;

    move-result-object p0

    return-object p0
.end method
