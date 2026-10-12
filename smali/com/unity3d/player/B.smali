.class final Lcom/unity3d/player/B;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field private b:Lcom/unity3d/player/D0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    new-instance p1, Lcom/unity3d/player/D0;

    invoke-direct {p1, p2}, Lcom/unity3d/player/D0;-><init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    iput-object p1, p0, Lcom/unity3d/player/B;->b:Lcom/unity3d/player/D0;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/unity3d/player/D0;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/B;->b:Lcom/unity3d/player/D0;

    return-object v0
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/B;->b:Lcom/unity3d/player/D0;

    invoke-virtual {v0}, Lcom/unity3d/player/D0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1, p3}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/B;->b:Lcom/unity3d/player/D0;

    invoke-virtual {v0}, Lcom/unity3d/player/D0;->c()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/B;->a:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
