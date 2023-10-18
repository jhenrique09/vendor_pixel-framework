.class public abstract Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler_Factory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static newInstance(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;

    invoke-direct {v0, p0, p1}, Lcom/google/android/systemui/assist/uihints/AssistantPresenceHandler;-><init>(Landroid/content/Context;Lcom/android/internal/app/AssistUtils;)V

    return-object v0
.end method
