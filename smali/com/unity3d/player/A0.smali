.class final Lcom/unity3d/player/A0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/A0;)Lcom/unity3d/player/UnityPlayer;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/A0;->a:Lcom/unity3d/player/UnityPlayer;

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/player/A0;->a:Lcom/unity3d/player/UnityPlayer;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->OREO_SUPPORT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/A0;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/z0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/z0;-><init>(Lcom/unity3d/player/A0;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method final b()V
    .locals 2

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->OREO_SUPPORT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/A0;->a:Lcom/unity3d/player/UnityPlayer;

    new-instance v1, Lcom/unity3d/player/y0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/y0;-><init>(Lcom/unity3d/player/A0;)V

    invoke-virtual {v0, v1}, Lcom/unity3d/player/UnityPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
