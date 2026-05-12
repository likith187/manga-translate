.class Lh0/g$a;
.super Landroidx/emoji2/text/e$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/Reference;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .locals 1

    invoke-direct {p0}, Landroidx/emoji2/text/e$f;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lh0/g$a;->a:Ljava/lang/ref/Reference;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    invoke-super {p0}, Landroidx/emoji2/text/e$f;->b()V

    iget-object p0, p0, Lh0/g$a;->a:Ljava/lang/ref/Reference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/EditText;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lh0/g;->c(Landroid/widget/EditText;I)V

    return-void
.end method
