.class public final Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/BcSmartspaceDataPlugin$SmartspaceEventNotifier;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/smartspace/CardPagerAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/smartspace/CardPagerAdapter;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;->this$0:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;->$r8$classId:I

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$onBindViewHolder$1;->this$0:Lcom/google/android/systemui/smartspace/CardPagerAdapter;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter;->dataProvider:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;->notifySmartspaceEvent(Landroid/app/smartspace/SmartspaceTargetEvent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
