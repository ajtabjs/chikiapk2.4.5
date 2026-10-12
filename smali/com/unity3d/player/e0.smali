.class final Lcom/unity3d/player/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/unity3d/player/g0;


# direct methods
.method constructor <init>(Lcom/unity3d/player/g0;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/e0;->a:Lcom/unity3d/player/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/unity3d/player/e0;->a:Lcom/unity3d/player/g0;

    iget-object p1, p1, Lcom/unity3d/player/W;->f:Lcom/unity3d/player/J;

    if-eqz p1, :cond_0

    .line 0
    check-cast p1, Lcom/unity3d/player/v1;

    invoke-virtual {p1}, Lcom/unity3d/player/v1;->a()V

    :cond_0
    return-void
.end method
