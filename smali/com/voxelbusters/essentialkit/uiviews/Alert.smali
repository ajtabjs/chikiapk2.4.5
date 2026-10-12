.class public Lcom/voxelbusters/essentialkit/uiviews/Alert;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/voxelbusters/essentialkit/uiviews/c;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dialog:Landroid/app/AlertDialog;

.field private listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

.field private message:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->context:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$000(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/voxelbusters/essentialkit/uiviews/Alert;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private getThemeStyle()I
    .locals 1

    const v0, 0x1030239

    return v0
.end method


# virtual methods
.method public addButton(Ljava/lang/String;Z)V
    .locals 1

    iget-object p2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    :cond_0
    iget-object p2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    new-instance v0, Lcom/voxelbusters/essentialkit/uiviews/c;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/uiviews/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public dismiss()V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Alert View"

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->message:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->title:Ljava/lang/String;

    return-void
.end method

.method public show(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;)V
    .locals 6
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->listener:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/voxelbusters/essentialkit/uiviews/Alert;->getThemeStyle()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    :goto_0
    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/voxelbusters/essentialkit/uiviews/c;

    rsub-int/lit8 v3, v1, -0x1

    const/4 v4, -0x3

    const/4 v5, 0x0

    if-eq v3, v4, :cond_2

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const-string v2, "Only max 3 buttons are allowed"

    invoke-static {v2}, Lcom/voxelbusters/essentialkit/utilities/Logger;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/voxelbusters/essentialkit/uiviews/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_1
    iget-object v2, v2, Lcom/voxelbusters/essentialkit/uiviews/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lcom/voxelbusters/essentialkit/uiviews/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/voxelbusters/essentialkit/uiviews/b;

    invoke-direct {v1, p0, p1}, Lcom/voxelbusters/essentialkit/uiviews/b;-><init>(Lcom/voxelbusters/essentialkit/uiviews/Alert;Lcom/voxelbusters/essentialkit/uiviews/IUiViews$IButtonClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/Alert;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
