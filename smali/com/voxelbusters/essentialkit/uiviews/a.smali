.class public final Lcom/voxelbusters/essentialkit/uiviews/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/voxelbusters/essentialkit/uiviews/b;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/b;I)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->b:Lcom/voxelbusters/essentialkit/uiviews/b;

    iput p2, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Button Index : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  buttons final : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->b:Lcom/voxelbusters/essentialkit/uiviews/b;

    iget-object v0, v0, Lcom/voxelbusters/essentialkit/uiviews/b;->b:Lcom/voxelbusters/essentialkit/uiviews/Alert;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/uiviews/Alert;->access$000(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->b:Lcom/voxelbusters/essentialkit/uiviews/b;

    iget-object p1, p1, Lcom/voxelbusters/essentialkit/uiviews/b;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/voxelbusters/essentialkit/uiviews/a;->a:I

    invoke-interface {p1, v0}, Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;->onClick(I)V

    :cond_0
    return-void
.end method
