.class final Lcom/unity3d/player/g0;
.super Lcom/unity3d/player/W;
.source "SourceFile"


# instance fields
.field h:Lcom/unity3d/player/Y;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/W;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V
    .locals 3

    new-instance v0, Lcom/unity3d/player/Y;

    iget-object v1, p0, Lcom/unity3d/player/W;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/W;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-direct {v0, v1, v2}, Lcom/unity3d/player/Y;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayerForActivityOrService;)V

    iput-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0, p0, p9, p10}, Lcom/unity3d/player/Y;->a(Lcom/unity3d/player/W;ZZ)V

    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    new-instance v1, Lcom/unity3d/player/c0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/c0;-><init>(Lcom/unity3d/player/g0;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-super/range {p0 .. p10}, Lcom/unity3d/player/W;->a(Ljava/lang/String;IZZZZLjava/lang/String;IZZ)V

    iget-object p1, p0, Lcom/unity3d/player/W;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/unity3d/player/d0;

    invoke-direct {p2, p0}, Lcom/unity3d/player/d0;-><init>(Lcom/unity3d/player/g0;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object p1, p0, Lcom/unity3d/player/W;->c:Landroid/widget/EditText;

    .line 0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    iget-object p1, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    new-instance p2, Lcom/unity3d/player/e0;

    invoke-direct {p2, p0}, Lcom/unity3d/player/e0;-><init>(Lcom/unity3d/player/g0;)V

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/unity3d/player/W;->d:Z

    .line 0
    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/Y;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected createEditText(Lcom/unity3d/player/W;)Landroid/widget/EditText;
    .locals 2

    new-instance v0, Lcom/unity3d/player/f0;

    iget-object v1, p0, Lcom/unity3d/player/W;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p1}, Lcom/unity3d/player/f0;-><init>(Lcom/unity3d/player/g0;Landroid/content/Context;Lcom/unity3d/player/W;)V

    return-object v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected reportSoftInputArea()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/g0;->h:Lcom/unity3d/player/Y;

    invoke-virtual {v0}, Lcom/unity3d/player/Y;->a()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/W;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v1, v0}, Lcom/unity3d/player/UnityPlayerForActivityOrService;->reportSoftInputArea(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method
