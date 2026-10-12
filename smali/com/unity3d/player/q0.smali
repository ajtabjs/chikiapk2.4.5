.class final Lcom/unity3d/player/q0;
.super Lcom/unity3d/player/X0;
.source "SourceFile"


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/s0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/s0;Lcom/unity3d/player/UnityPlayer;II)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/q0;->d:Lcom/unity3d/player/s0;

    iput p3, p0, Lcom/unity3d/player/q0;->b:I

    iput p4, p0, Lcom/unity3d/player/q0;->c:I

    invoke-direct {p0, p2}, Lcom/unity3d/player/X0;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Lcom/unity3d/player/q0;->b:I

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/unity3d/player/q0;->c:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeIncremented(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/unity3d/player/q0;->c:I

    invoke-static {v0}, Lcom/unity3d/player/UnityAccessibilityDelegate;->-$$Nest$smonNodeDecremented(I)V

    :goto_0
    iget-object v0, p0, Lcom/unity3d/player/q0;->d:Lcom/unity3d/player/s0;

    iget-object v0, v0, Lcom/unity3d/player/s0;->a:Lcom/unity3d/player/UnityAccessibilityDelegate;

    iget v1, p0, Lcom/unity3d/player/q0;->c:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/UnityAccessibilityDelegate;->sendEventForVirtualViewId(II)Z

    return-void
.end method
