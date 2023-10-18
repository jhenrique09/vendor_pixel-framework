.class public final Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    iget p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->$r8$classId:I

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string v2, "HealthManager"

    const-string v3, "onReceive: "

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->healthDebugEnabled:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.systemui.BATTERY_HEALTH_DEBUG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1$onReceive$1;

    invoke-direct {p2, p0, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1$onReceive$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    :goto_0
    return-void

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p1, p1, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {p1, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object p0, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager$healthDebugReceiver$1;->this$0:Lcom/google/android/systemui/power/batteryhealth/HealthManager;

    iget-object p1, p0, Lcom/google/android/systemui/power/batteryhealth/HealthManager;->mainScope:Lkotlinx/coroutines/CoroutineScope;

    new-instance p2, Lcom/google/android/systemui/power/batteryhealth/HealthManager$bootCompletedReceiver$1$onReceive$1;

    invoke-direct {p2, p0, v1}, Lcom/google/android/systemui/power/batteryhealth/HealthManager$bootCompletedReceiver$1$onReceive$1;-><init>(Lcom/google/android/systemui/power/batteryhealth/HealthManager;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, v1, v1, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
