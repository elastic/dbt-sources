
with source as (

    select * from {{ source('raw_salesforce', 'task_who_relation') }}

),

renamed as (

    select
        id,
        _fivetran_synced,
        account_id,
        created_by_id,
        created_date,
        is_deleted,
        last_modified_by_id,
        last_modified_date,
        relation_id,
        system_modstamp,
        task_id,
        type,
        _fivetran_deleted

    from source

)

select * from renamed
