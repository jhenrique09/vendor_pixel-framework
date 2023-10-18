.class public final Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;->this$0:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester$keyguardStateControllerCallback$1;->this$0:Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;

    invoke-static {p0}, Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;->access$updateRefreshRateRequest(Lcom/google/android/systemui/keyguard/PreAuthRefreshRateRequester;)V

    return-void
.end method
