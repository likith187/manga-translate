.class public final synthetic Lcom/oplus/anim/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/oplus/anim/o$b;


# instance fields
.field public final synthetic a:Lcom/oplus/anim/o;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/anim/o;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/anim/m;->a:Lcom/oplus/anim/o;

    iput p2, p0, Lcom/oplus/anim/m;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/oplus/anim/a;)V
    .locals 1

    iget-object v0, p0, Lcom/oplus/anim/m;->a:Lcom/oplus/anim/o;

    iget p0, p0, Lcom/oplus/anim/m;->b:I

    invoke-static {v0, p0, p1}, Lcom/oplus/anim/o;->i(Lcom/oplus/anim/o;ILcom/oplus/anim/a;)V

    return-void
.end method
