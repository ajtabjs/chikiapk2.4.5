.class final Lcom/unity3d/player/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/unity3d/player/N;


# direct methods
.method constructor <init>(Lcom/unity3d/player/N;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/M;->b:Lcom/unity3d/player/N;

    iput-object p2, p0, Lcom/unity3d/player/M;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/M;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/unity3d/player/M;->b:Lcom/unity3d/player/N;

    iget-object p1, p1, Lcom/unity3d/player/N;->b:Lcom/unity3d/player/O;

    iget-object p1, p1, Lcom/unity3d/player/O;->a:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/unity3d/player/L;

    invoke-direct {v0, p0}, Lcom/unity3d/player/L;-><init>(Lcom/unity3d/player/M;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
