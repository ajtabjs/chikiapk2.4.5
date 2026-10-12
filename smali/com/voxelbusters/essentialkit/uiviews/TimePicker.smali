.class public Lcom/voxelbusters/essentialkit/uiviews/TimePicker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/voxelbusters/essentialkit/utilities/common/interfaces/IFeature;


# instance fields
.field private context:Landroid/app/Activity;

.field private dialog:Landroid/app/TimePickerDialog;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/voxelbusters/essentialkit/uiviews/TimePicker;->context:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getFeatureName()Ljava/lang/String;
    .locals 1

    const-string v0, "Time Picker"

    return-object v0
.end method

.method public setListener(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;)V
    .locals 8
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v7, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/voxelbusters/essentialkit/uiviews/TimePicker;->context:Landroid/app/Activity;

    new-instance v3, Lcom/voxelbusters/essentialkit/uiviews/g;

    invoke-direct {v3, p1}, Lcom/voxelbusters/essentialkit/uiviews/g;-><init>(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    iput-object v7, p0, Lcom/voxelbusters/essentialkit/uiviews/TimePicker;->dialog:Landroid/app/TimePickerDialog;

    new-instance v0, Lcom/voxelbusters/essentialkit/uiviews/h;

    invoke-direct {v0, p1}, Lcom/voxelbusters/essentialkit/uiviews/h;-><init>(Lcom/voxelbusters/essentialkit/uiviews/IUiViews$ITimePickerListener;)V

    invoke-virtual {v7, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setValue(II)V
    .locals 1

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/TimePicker;->dialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0, p1, p2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    return-void
.end method

.method public show()V
    .locals 1
    .annotation runtime Lcom/voxelbusters/essentialkit/utilities/common/annotations/RunOnUiThread;
    .end annotation

    iget-object v0, p0, Lcom/voxelbusters/essentialkit/uiviews/TimePicker;->dialog:Landroid/app/TimePickerDialog;

    invoke-virtual {v0}, Landroid/app/TimePickerDialog;->show()V

    return-void
.end method
