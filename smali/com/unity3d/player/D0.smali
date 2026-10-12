.class final Lcom/unity3d/player/D0;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Lcom/unity3d/player/g;

.field private b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

.field private c:Lcom/unity3d/player/O;


# direct methods
.method static bridge synthetic -$$Nest$fgeta(Lcom/unity3d/player/D0;)Lcom/unity3d/player/g;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetb(Lcom/unity3d/player/D0;)Lcom/unity3d/player/UnityPlayerForActivityOrService;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/D0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetc(Lcom/unity3d/player/D0;)Lcom/unity3d/player/O;
    .locals 0

    iget-object p0, p0, Lcom/unity3d/player/D0;->c:Lcom/unity3d/player/O;

    return-object p0
.end method

.method public constructor <init>(Lcom/unity3d/player/UnityPlayerForActivityOrService;)V
    .locals 5

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/unity3d/player/O;

    invoke-direct {v1, v0}, Lcom/unity3d/player/O;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unity3d/player/D0;->c:Lcom/unity3d/player/O;

    iput-object p1, p0, Lcom/unity3d/player/D0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    new-instance v1, Lcom/unity3d/player/g;

    invoke-direct {v1, p1}, Lcom/unity3d/player/g;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    iput-object v1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unitySurfaceView"

    const-string v4, "id"

    invoke-virtual {p1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setId(I)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    iget-object v1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-virtual {p1, v1}, Lcom/unity3d/player/UnityPlayer;->applySurfaceViewSettings(Landroid/view/SurfaceView;)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance v1, Lcom/unity3d/player/C0;

    invoke-direct {v1, p0}, Lcom/unity3d/player/C0;-><init>(Lcom/unity3d/player/D0;)V

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-static {v0}, Lcom/unity3d/player/D0;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x11

    invoke-direct {v0, v1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "game_view_content_description"

    const-string v3, "string"

    invoke-virtual {v1, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final a()Lcom/unity3d/player/g;
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    return-object v0
.end method

.method final a(F)V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/g;->a(F)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/D0;->c:Lcom/unity3d/player/O;

    iget-object v1, p0, Lcom/unity3d/player/D0;->b:Lcom/unity3d/player/UnityPlayerForActivityOrService;

    invoke-virtual {v1}, Lcom/unity3d/player/UnityPlayer;->getFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    if-eqz v2, :cond_0

    .line 0
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/unity3d/player/D0;->c:Lcom/unity3d/player/O;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/unity3d/player/O;->b:Lcom/unity3d/player/N;

    return-void
.end method

.method public final c()Z
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/D0;->a:Lcom/unity3d/player/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unity3d/player/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
