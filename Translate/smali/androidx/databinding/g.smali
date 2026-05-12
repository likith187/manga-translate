.class public Landroidx/databinding/g;
.super Landroidx/databinding/c;
.source "SourceFile"


# static fields
.field private static final i:Landroidx/databinding/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/databinding/g$a;

    invoke-direct {v0}, Landroidx/databinding/g$a;-><init>()V

    sput-object v0, Landroidx/databinding/g;->i:Landroidx/databinding/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/databinding/g;->i:Landroidx/databinding/c$a;

    invoke-direct {p0, v0}, Landroidx/databinding/c;-><init>(Landroidx/databinding/c$a;)V

    return-void
.end method
