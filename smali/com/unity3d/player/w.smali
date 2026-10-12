.class final Lcom/unity3d/player/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/x;


# direct methods
.method constructor <init>(Lcom/unity3d/player/x;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w;->a:Lcom/unity3d/player/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/w;->a:Lcom/unity3d/player/x;

    invoke-static {v0}, Lcom/unity3d/player/x;->-$$Nest$fgeta(Lcom/unity3d/player/x;)Lcom/unity3d/player/a/b;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/Camera2Wrapper;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/Camera2Wrapper;->a(Ljava/lang/Object;)V

    return-void
.end method
