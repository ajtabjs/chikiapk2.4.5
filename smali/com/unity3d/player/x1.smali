.class final Lcom/unity3d/player/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayerForGameActivity;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayerForGameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/x1;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lcom/unity3d/player/x1;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$fgetm_PersistentUnitySurface(Lcom/unity3d/player/UnityPlayerForGameActivity;)Lcom/unity3d/player/O;

    move-result-object v0

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object v1, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    if-eqz v1, :cond_0

    .line 0
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    iget-object p1, p0, Lcom/unity3d/player/x1;->a:Lcom/unity3d/player/UnityPlayerForGameActivity;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayerForGameActivity;->-$$Nest$fgetm_PersistentUnitySurface(Lcom/unity3d/player/UnityPlayerForGameActivity;)Lcom/unity3d/player/O;

    move-result-object v0

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayerForGameActivity;->m_SurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v1, Lcom/unity3d/player/PlatformSupport;->NOUGAT_SUPPORT:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/O;->a:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unity3d/player/N;

    iget-object v2, v0, Lcom/unity3d/player/O;->a:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/unity3d/player/N;-><init>(Lcom/unity3d/player/O;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    :cond_0
    iget-object v0, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/N;->a(Landroid/view/SurfaceView;)V

    :cond_1
    return-void
.end method
