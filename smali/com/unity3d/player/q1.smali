.class final Lcom/unity3d/player/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/Surface;

.field final synthetic c:Ljava/util/concurrent/Semaphore;

.field final synthetic d:Lcom/unity3d/player/UnityPlayerForActivityOrService;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;ILandroid/view/Surface;Ljava/util/concurrent/Semaphore;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/q1;->d:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iput p2, p0, Lcom/unity3d/player/q1;->a:I

    iput-object p3, p0, Lcom/unity3d/player/q1;->b:Landroid/view/Surface;

    iput-object p4, p0, Lcom/unity3d/player/q1;->c:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/q1;->d:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget v1, p0, Lcom/unity3d/player/q1;->a:I

    iget-object v2, p0, Lcom/unity3d/player/q1;->b:Landroid/view/Surface;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->-$$Nest$mnativeRecreateGfxState(Lcom/unity3d/player/UnityPlayerForActivityOrService;ILandroid/view/Surface;)V

    iget-object v0, p0, Lcom/unity3d/player/q1;->c:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
