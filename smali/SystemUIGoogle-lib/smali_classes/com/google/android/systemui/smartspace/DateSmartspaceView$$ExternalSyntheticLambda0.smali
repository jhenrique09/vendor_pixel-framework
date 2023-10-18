.class public final synthetic Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/DateSmartspaceView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :pswitch_1
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :goto_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
