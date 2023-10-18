.class public abstract Lcom/google/android/systemui/assist/uihints/TouchInsideHandler_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/assist/AssistLogger;)Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/systemui/assist/uihints/TouchInsideHandler;-><init>(Ldagger/Lazy;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/assist/AssistLogger;)V

    return-object v0
.end method
