.class public final Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;
.super Landroidx/recyclerview/widget/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;,
        Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$TimeConsumingOperationOnMainThreadException;,
        Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/q;"
    }
.end annotation


# static fields
.field private static final CONTENT_CONTAINER_MAX_LINE_COUNT:I = 0x32

.field public static final Companion:Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;->Companion:Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/coui/appcompat/opensource/DiffCallback;

    invoke-direct {v0}, Lcom/coui/appcompat/opensource/DiffCallback;-><init>()V

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/q;-><init>(Landroidx/recyclerview/widget/k$f;)V

    return-void
.end method

.method public static synthetic f(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;->loadContent$lambda$4$lambda$3(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static final loadContent$lambda$4$lambda$3(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$statementSegments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/q;->submitList(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final loadContent(Landroidx/recyclerview/widget/RecyclerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    sget-object v2, Ln8/r;->Companion:Ln8/r$a;

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "block.toString()"

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    :try_start_2
    rem-int/lit8 v5, v1, 0x32

    if-nez v5, :cond_0

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Lcom/coui/appcompat/opensource/StatementSegment;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p2, v1}, Lcom/coui/appcompat/opensource/StatementSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "append(value)"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0xa

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "append(\'\\n\')"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    new-instance v3, Lcom/coui/appcompat/opensource/StatementSegment;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p2, v1}, Lcom/coui/appcompat/opensource/StatementSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object p2, Ln8/h0;->INSTANCE:Ln8/h0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p2, 0x0

    :try_start_3
    invoke-static {v2, p2}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    new-instance p2, Lcom/coui/appcompat/opensource/a;

    invoke-direct {p2, p0, v0}, Lcom/coui/appcompat/opensource/a;-><init>(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-static {v2, p0}, Lkotlin/io/c;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_2
    sget-object p1, Ln8/r;->Companion:Ln8/r$a;

    invoke-static {p0}, Ln8/s;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ln8/r;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_3
    invoke-static {p0}, Ln8/r;->toString-impl(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$TimeConsumingOperationOnMainThreadException;

    invoke-direct {p0}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$TimeConsumingOperationOnMainThreadException;-><init>()V

    throw p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 0

    .line 1
    check-cast p1, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;->onBindViewHolder(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;I)V
    .locals 1

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;->getContent()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/q;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/opensource/StatementSegment;

    invoke-virtual {p0}, Lcom/coui/appcompat/opensource/StatementSegment;->getContent()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;
    .locals 1

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 3
    sget p1, Lcom/support/component/R$layout;->coui_component_opensource_statement_article_body:I

    const/4 p2, 0x0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 5
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    new-instance p1, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;

    const-string p2, "textView"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lcom/coui/appcompat/opensource/COUIOpenSourceStatementAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method
