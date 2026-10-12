.class public final Lcom/voxelbusters/essentialkit/uiviews/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

.field public final synthetic b:Lcom/voxelbusters/essentialkit/uiviews/Alert;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/Alert;Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/b;->b:Lcom/voxelbusters/essentialkit/uiviews/Alert;

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/uiviews/b;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/b;->b:Lcom/voxelbusters/essentialkit/uiviews/Alert;

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/uiviews/Alert;->access$000(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/b;->b:Lcom/voxelbusters/essentialkit/uiviews/Alert;

    invoke-static {v0}, Lcom/voxelbusters/essentialkit/uiviews/Alert;->access$000(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    rsub-int/lit8 v0, p1, -0x1

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/uiviews/b;->b:Lcom/voxelbusters/essentialkit/uiviews/Alert;

    invoke-static {v1}, Lcom/voxelbusters/essentialkit/uiviews/Alert;->access$200(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/voxelbusters/essentialkit/uiviews/a;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/uiviews/a;-><init>(Lcom/voxelbusters/essentialkit/uiviews/b;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
