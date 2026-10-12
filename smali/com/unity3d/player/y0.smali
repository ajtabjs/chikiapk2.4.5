.class final Lcom/unity3d/player/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/unity3d/player/A0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/A0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/y0;->a:Lcom/unity3d/player/A0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/unity3d/player/y0;->a:Lcom/unity3d/player/A0;

    invoke-static {v0}, Lcom/unity3d/player/A0;->-$$Nest$fgeta(Lcom/unity3d/player/A0;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestPointerCapture()V

    return-void
.end method
