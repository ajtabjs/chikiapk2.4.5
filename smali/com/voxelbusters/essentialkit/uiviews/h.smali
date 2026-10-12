.class public final Lcom/voxelbusters/essentialkit/uiviews/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;


# direct methods
.method public constructor <init>(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/h;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "Cancelled Time Picker Dialog"

    invoke-static {p1}, Lcom/voxelbusters/essentialkit/utilities/Logger;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/h;->a:Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;->onCancel()V

    :cond_0
    return-void
.end method
