.class public final synthetic Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;->this$0:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle;->mBatteryControllerCallback:Lcom/google/android/systemui/statusbar/phone/AutoTileManagerGoogle$1;

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
