.class public final synthetic Lm7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls7/g;


# instance fields
.field public final synthetic a:Lo7/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lo7/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/f;->a:Lo7/c;

    iput p2, p0, Lm7/f;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm7/f;->a:Lo7/c;

    iget p0, p0, Lm7/f;->b:I

    invoke-static {v0, p0}, Lm7/k;->a(Lo7/c;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
