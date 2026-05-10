package com.oplus.aiunit.antispam.client;

import com.oplus.aisubsystem.core.client.AiSettings;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.r;
import w8.l;

/* JADX INFO: loaded from: classes.dex */
public final class AntiSpamSettings extends AiSettings {
    public static final Companion Companion = new Companion(null);

    public static final class Builder extends AiSettings.b {
        public final AntiSpamSettings build() {
            return (AntiSpamSettings) buildSettings(AntiSpamSettings.class);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AntiSpamSettings build(l block) {
            r.e(block, "block");
            Builder builder = new Builder();
            block.invoke(builder);
            return builder.build();
        }

        private Companion() {
        }

        public final AntiSpamSettings build() {
            return new Builder().build();
        }
    }

    public static final AntiSpamSettings build() {
        return Companion.build();
    }

    public static final AntiSpamSettings build(l lVar) {
        return Companion.build(lVar);
    }
}
