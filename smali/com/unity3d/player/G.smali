.class Lcom/unity3d/player/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/unity3d/player/a/e;

.field protected b:Ljava/lang/Runnable;

.field protected c:Z


# direct methods
.method protected constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/G;->c:Z

    iput-object p1, p0, Lcom/unity3d/player/G;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected registerOnBackPressedCallback()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    if-eqz v0, :cond_0

    return-void

    .line 0
    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/G;->b:Ljava/lang/Runnable;

    new-instance v1, Lcom/unity3d/player/F;

    invoke-direct {v1, v0}, Lcom/unity3d/player/F;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    return-void
.end method

.method protected unregisterOnBackPressedCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    return-void
.end method
