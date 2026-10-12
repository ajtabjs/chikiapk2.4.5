.class final Lcom/unity3d/player/p0;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/unity3d/player/s0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s0;Lcom/unity3d/player/UnityPlayer;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/p0;->c:Lcom/unity3d/player/s0;

    iput p3, p0, Lcom/unity3d/player/p0;->b:I

    invoke-direct {p0, p2}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/unity3d/player/p0;->b:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeSelected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/p0;->c:Lcom/unity3d/player/s0;

    iget-object v0, v0, Lcom/unity3d/player/s0;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iget v1, p0, Lcom/unity3d/player/p0;->b:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    :cond_0
    return-void
.end method
