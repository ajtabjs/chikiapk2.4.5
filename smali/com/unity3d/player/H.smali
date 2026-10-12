.class final Lcom/unity3d/player/H;
.super Lcom/unity3d/player/G;
.source "SourceFile"


# instance fields
.field private d:Landroid/window/OnBackInvokedCallback;

.field private e:Landroid/window/OnBackInvokedDispatcher;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p3}, Lcom/unity3d/player/G;-><init>(Ljava/lang/Runnable;)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/unity3d/player/H;->d:Landroid/window/OnBackInvokedCallback;

    iput p2, p0, Lcom/unity3d/player/H;->f:I

    iput-object p1, p0, Lcom/unity3d/player/H;->e:Landroid/window/OnBackInvokedDispatcher;

    return-void
.end method

.method public static a(Ljava/lang/Object;ILjava/lang/Runnable;)Lcom/unity3d/player/G;
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_1

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 0
    :cond_0
    invoke-static {p0}, Lcom/unity3d/player/f;->a(Ljava/lang/Object;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    new-instance v0, Lcom/unity3d/player/H;

    invoke-direct {v0, p0, p1, p2}, Lcom/unity3d/player/H;-><init>(Landroid/window/OnBackInvokedDispatcher;ILjava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/unity3d/player/G;

    invoke-direct {v0, p2}, Lcom/unity3d/player/G;-><init>(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Lcom/unity3d/player/G;->registerOnBackPressedCallback()V

    return-object v0
.end method


# virtual methods
.method protected registerOnBackPressedCallback()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    if-eqz v0, :cond_0

    return-void

    .line 0
    :cond_0
    invoke-super {p0}, Lcom/unity3d/player/G;->registerOnBackPressedCallback()V

    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    new-instance v1, Lcom/unity3d/player/e;

    invoke-direct {v1, v0}, Lcom/unity3d/player/e;-><init>(Lcom/unity3d/player/a/e;)V

    iput-object v1, p0, Lcom/unity3d/player/H;->d:Landroid/window/OnBackInvokedCallback;

    iget-object v0, p0, Lcom/unity3d/player/H;->e:Landroid/window/OnBackInvokedDispatcher;

    iget v2, p0, Lcom/unity3d/player/H;->f:I

    invoke-static {v0, v2, v1}, Lcom/unity3d/player/f;->a(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    :cond_1
    return-void
.end method

.method protected unregisterOnBackPressedCallback()V
    .locals 2

    iget-object v0, p0, Lcom/unity3d/player/G;->a:Lcom/unity3d/player/a/e;

    if-eqz v0, :cond_1

    .line 0
    sget-boolean v0, Lcom/unity3d/player/PlatformSupport;->TIRAMISU_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/H;->e:Landroid/window/OnBackInvokedDispatcher;

    iget-object v1, p0, Lcom/unity3d/player/H;->d:Landroid/window/OnBackInvokedCallback;

    invoke-static {v0, v1}, Lcom/unity3d/player/f;->a(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/H;->d:Landroid/window/OnBackInvokedCallback;

    :cond_0
    invoke-super {p0}, Lcom/unity3d/player/G;->unregisterOnBackPressedCallback()V

    :cond_1
    return-void
.end method
