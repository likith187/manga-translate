.class public abstract Lz4/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z

.field public static final b:Lw4/d$b;

.field public static final c:Lw4/d$b;

.field public static final d:Lcom/google/gson/w;

.field public static final e:Lcom/google/gson/w;

.field public static final f:Lcom/google/gson/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "java.sql.Date"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lz4/d;->a:Z

    if-eqz v0, :cond_0

    new-instance v0, Lz4/d$a;

    const-class v1, Ljava/sql/Date;

    invoke-direct {v0, v1}, Lz4/d$a;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lz4/d;->b:Lw4/d$b;

    new-instance v0, Lz4/d$b;

    const-class v1, Ljava/sql/Timestamp;

    invoke-direct {v0, v1}, Lz4/d$b;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lz4/d;->c:Lw4/d$b;

    sget-object v0, Lz4/a;->b:Lcom/google/gson/w;

    sput-object v0, Lz4/d;->d:Lcom/google/gson/w;

    sget-object v0, Lz4/b;->b:Lcom/google/gson/w;

    sput-object v0, Lz4/d;->e:Lcom/google/gson/w;

    sget-object v0, Lz4/c;->b:Lcom/google/gson/w;

    sput-object v0, Lz4/d;->f:Lcom/google/gson/w;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lz4/d;->b:Lw4/d$b;

    sput-object v0, Lz4/d;->c:Lw4/d$b;

    sput-object v0, Lz4/d;->d:Lcom/google/gson/w;

    sput-object v0, Lz4/d;->e:Lcom/google/gson/w;

    sput-object v0, Lz4/d;->f:Lcom/google/gson/w;

    :goto_1
    return-void
.end method
