-- public.conversation_lines definition

-- Drop table

-- DROP TABLE public.conversation_lines;

CREATE TABLE public.conversation_lines (
	id serial4 NOT NULL,
	conversation_id int4 NULL,
	speaker text NOT NULL,
	speaker_gender text NULL,
	speaker_role text NULL,
	sentence text NOT NULL,
	furigana text NULL,
	"translation" text NULL,
	audio_jp text NULL,
	audio_vi text NULL,
	notes text NULL,
	notes_jp text NULL,
	politeness text NULL,
	order_index int4 DEFAULT 0 NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	grammar_analysis text NULL,
	CONSTRAINT pk_conversation_lines PRIMARY KEY (id)
);
CREATE INDEX ix_conversation_lines_conversation_id ON public.conversation_lines USING btree (conversation_id);
CREATE INDEX ix_conversation_lines_order ON public.conversation_lines USING btree (conversation_id, order_index);


-- public.conversations definition

-- Drop table

-- DROP TABLE public.conversations;

CREATE TABLE public.conversations (
	id serial4 NOT NULL,
	user_id text NULL,
	is_single_line bool DEFAULT false NOT NULL,
	content_type text NULL,
	content_id text NULL,
	in_table text NULL,
	"level" text NULL,
	title text NULL,
	title_jp text NULL,
	situation text NULL,
	situation_jp text NULL,
	sentence text NULL,
	"translation" text NULL,
	furigana text NULL,
	full_audio_jp text NULL,
	full_audio_vi text NULL,
	order_index int4 DEFAULT 0 NULL,
	is_system bool DEFAULT false NOT NULL,
	tenant_id text NULL,
	is_deleted bool DEFAULT false NOT NULL,
	is_active bool DEFAULT true NOT NULL,
	created_at timestamp DEFAULT now() NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	CONSTRAINT pk_conversations PRIMARY KEY (id)
);
CREATE INDEX ix_conversations_content ON public.conversations USING btree (content_type, content_id);
CREATE INDEX ix_conversations_user_id ON public.conversations USING btree (user_id);


-- public.curricula definition

-- Drop table

-- DROP TABLE public.curricula;

CREATE TABLE public.curricula (
	id serial4 NOT NULL,
	"level" text NULL,
	"type" text NULL,
	title text NULL,
	introduction text NULL,
	introduction_jp text NULL,
	total_items text NULL,
	progress text NULL,
	last_accessed timestamp NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	user_id varchar NULL,
	published_at timestamp NULL,
	status text NULL,
	category text NULL,
	is_system bool DEFAULT false NOT NULL,
	is_public bool DEFAULT false NOT NULL,
	is_free_override bool DEFAULT false NOT NULL,
	free_preview_count int4 DEFAULT 3 NOT NULL,
	CONSTRAINT pk_curricula PRIMARY KEY (id)
);
CREATE INDEX ix_curricula_is_system_level ON public.curricula USING btree (is_system, level) WHERE ((is_deleted = false) AND (is_active = true));
CREATE INDEX ix_curricula_user_updated ON public.curricula USING btree (user_id, updated_at) WHERE ((is_deleted = false) AND (is_active = true));


-- public.curriculum_node definition

-- Drop table

-- DROP TABLE public.curriculum_node;

CREATE TABLE public.curriculum_node (
	id serial4 NOT NULL,
	curriculum_id int4 NOT NULL,
	parent_id int4 NULL,
	node_type text NULL,
	node_title text NULL,
	note_title_jp text NULL,
	node_definition text NULL,
	node_definition_jp text NULL,
	node_content text NULL,
	node_content_jp text NULL,
	node_extra text NULL,
	node_extra_jp text NULL,
	node_notes text NULL,
	node_notes_jp text NULL,
	node_conclusion text NULL,
	node_conclusion_jp text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	access_level text DEFAULT 'free'::text NOT NULL,
	order_index int4 DEFAULT 0 NOT NULL,
	CONSTRAINT pk_curriculum_node PRIMARY KEY (id),
	CONSTRAINT fk_curriculum_node_curriculum_id_curricula FOREIGN KEY (curriculum_id) REFERENCES public.curricula(id),
	CONSTRAINT fk_curriculum_node_parent_id_curriculum_node FOREIGN KEY (parent_id) REFERENCES public.curriculum_node(id)
);


-- public.curriculum_node_content definition

-- Drop table

-- DROP TABLE public.curriculum_node_content;

CREATE TABLE public.curriculum_node_content (
	id serial4 NOT NULL,
	curriculum_node_id int4 NOT NULL,
	content_type text NULL,
	content_id text NULL,
	tenant_id text NULL,
	is_deleted bool NOT NULL,
	is_active bool NOT NULL,
	created_at timestamp NOT NULL,
	created_by text NULL,
	updated_at timestamp NULL,
	updated_by text NULL,
	order_index int4 DEFAULT 0 NULL,
	CONSTRAINT pk_curriculum_node_content PRIMARY KEY (id),
	CONSTRAINT fk_curriculum_node_content_curriculum_node_id_curriculum_node FOREIGN KEY (curriculum_node_id) REFERENCES public.curriculum_node(id)
);