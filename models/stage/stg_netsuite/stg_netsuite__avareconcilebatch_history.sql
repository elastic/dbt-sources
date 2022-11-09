
with source as (

    select * from {{ source('raw_netsuite', 'avareconcilebatch_history') }}

),

renamed as (

    select
        avareconcilebatch_extid,
        avareconcilebatch_id,
        avareconcilebatch_name,
        avatax_created_doc_ids_1,
        avatax_created_doc_ids_2,
        avatax_created_doc_ids_3,
        avatax_created_doc_ids_4,
        avatax_netsuite__custom_recor,
        avatax__custom_record,
        avatax__netsuite,
        batch_date,
        batch_end_date,
        batch_name,
        batch_phase,
        batch_progress,
        batch_start_date,
        batch_status,
        cr_internal_ids,
        date_created,
        is_inactive,
        lastdoccode,
        last_modified_date,
        multicurrency_batch,
        netsuite_created_doc_ids_1,
        netsuite_created_doc_ids_2,
        netsuite_created_doc_ids_3,
        netsuite_created_doc_ids_4,
        netsuite__custom_record,
        only_avatax,
        only_custom_record,
        only_netsuite,
        parent_id,
        reconciled,
        subsidiary_id,
        total_records

    from source

)

select * from renamed
