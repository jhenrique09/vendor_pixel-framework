.class public final Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/systemui/columbus/legacy/actions/Action$Listener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/legacy/ColumbusService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/legacy/actions/Action;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/legacy/ColumbusService$actionListener$1;->this$0:Lcom/google/android/systemui/columbus/legacy/ColumbusService;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/legacy/ColumbusService;->updateSensorListener()V

    return-void
.end method
