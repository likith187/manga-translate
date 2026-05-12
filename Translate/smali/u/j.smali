.class abstract Lu/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lu/j;->a:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Lt/e$c;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;
.end method

.method public abstract b(Landroid/content/Context;Landroid/os/CancellationSignal;[La0/g$b;I)Landroid/graphics/Typeface;
.end method

.method public abstract c(Landroid/content/Context;Landroid/os/CancellationSignal;Ljava/util/List;I)Landroid/graphics/Typeface;
.end method

.method public abstract d(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
.end method
