
with source as (

    select * from {{ source('raw_netsuite_sa', 'elastic_approvals_delegation') }}

),

renamed as (

    select
        elastic_approvals_delegatio_id,
        _fivetran_deleted,
        _fivetran_synced,
        date_created,
        date_deleted,
        delegate_id,
        delegation_end_date,
        delegation_start_date,
        delegator_id,
        elastic_approvals_delegatio_ex,
        elastic_approvals_delegatio_na,
        is_inactive,
        last_modified_date,
        parent_id

    from source

)

select * from renamed
